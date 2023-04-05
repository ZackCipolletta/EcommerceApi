namespace EcommerseApi.Filter
{
  public class PaginationFilter
  {
    public int PageNumber { get; set; }
    public int PageSize { get; set; }
    public bool ShowAll { get; set; }

    public PaginationFilter()
    {
      this.PageNumber = 1;
      this.PageSize = 10;
      this.ShowAll = false;
    }

    public PaginationFilter(int pageNumber, int pageSize, bool showAll = false)
    {
      this.PageNumber = pageNumber < 1 ? 1 : pageNumber;
      this.PageSize = showAll ? int.MaxValue : pageSize > 10 ? 10 : pageSize;
      this.ShowAll = showAll;
    }
  }
}