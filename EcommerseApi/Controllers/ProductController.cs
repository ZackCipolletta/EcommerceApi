using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using EcommerseApi.Models;
using EcommerseApi.Wrappers;
using EcommerseApi.Filter;

namespace EcommerseApi.Controllers
{

  [Route("api/[controller]")]
  [ApiController]
  public class ProductsController : ControllerBase
  {
    private readonly EcommerseApiContext _db;

    public ProductsController(EcommerseApiContext db)
    {
      _db = db;
    }

    // GET api/products
    [HttpGet]
    public async Task<ActionResult<IEnumerable<Product>>> Get([FromQuery] PaginationFilter filter, string type, string name, string search)
    {
      IQueryable<Product> query = _db.Products.Include(product => product.Reviews).AsQueryable();

      if (type != null)
      {
        query = query.Where(entry => entry.Type == type);
      }

      if (name != null)
      {
        query = query.Where(entry => entry.Name == name);
      }

      if (search == "random")
      {
        Random random = new Random();
        int randomId = random.Next(1, (1 + query.Count()));
        query = query.Where(entry => entry.ProductId == randomId);
      }

      var products = await query.ToListAsync();

      foreach (var product in products)
      {
        product.ReviewCount = product.Reviews?.Count() ?? 0;
      }

      if (search == "popular")
      {
        products = products.OrderByDescending(products => products.ReviewCount).ToList();
      }

      var validFilter = new PaginationFilter(filter.PageNumber, filter.PageSize);

      var pagedData = await _db.Products.Skip((validFilter.PageNumber - 1) * validFilter.PageSize).Take(validFilter.PageSize).ToListAsync();

      var totalRecords = await _db.Products.CountAsync();

      return Ok(new PagedResponse<List<Product>>(pagedData,validFilter.PageNumber,validFilter.PageSize));
    }


    // GET: api/Products/5
    [HttpGet("{id}")]
    public async Task<ActionResult<Product>> GetProduct(int id)
    {
      Product product = await _db.Products.Include(d => d.Reviews).FirstOrDefaultAsync(d => d.ProductId == id);

      if (product == null)
      {
        return NotFound();
      }

      return product;
    }

    // POST api/products
    [HttpPost]
    public async Task<ActionResult<Product>> Post(Product product)
    {
      _db.Products.Add(product);
      await _db.SaveChangesAsync();
      return CreatedAtAction(nameof(GetProduct), new { id = product.ProductId }, product);
    }


    // PUT: api/Products/5
    [HttpPut("{id}")]
    public async Task<IActionResult> Put(int id, Product product)
    {
      if (id != product.ProductId)
      {
        return BadRequest();
      }

      _db.Products.Update(product);

      try
      {
        await _db.SaveChangesAsync();
      }
      catch (DbUpdateConcurrencyException)
      {
        if (!ProductExists(id))
        {
          return NotFound();
        }
        else
        {
          throw;
        }
      }

      return NoContent();
    }

    private bool ProductExists(int id)
    {
      return _db.Products.Any(e => e.ProductId == id);
    }

    // DELETE: api/Products/5
    [HttpDelete("{id}")]
    public async Task<IActionResult> DeleteProduct(int id)
    {
      Product product = await _db.Products.FindAsync(id);
      if (product == null)
      {
        return NotFound();
      }

      _db.Products.Remove(product);
      await _db.SaveChangesAsync();

      return NoContent();
    }
  }
}