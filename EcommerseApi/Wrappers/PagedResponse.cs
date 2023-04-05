namespace EcommerseApi.Wrappers
{
  public class PagedResponse<T> : Response<T>
  {

    public int PageNumber { get; set; }
    public int PageSize { get; set; }
    public bool ShowAll { get; set; }
    public int TotalPages { get; set; }
    public int TotalRecords { get; set; }

    public PagedResponse(T data, int pageNumber, int pageSize, bool showAll)
    {
      this.PageNumber = pageNumber;
      this.PageSize = pageSize;
      this.ShowAll = showAll;
      this.Data = data;
      this.Message = null;
      this.Succeeded = true;
      this.Errors = null;
    }

  }
}