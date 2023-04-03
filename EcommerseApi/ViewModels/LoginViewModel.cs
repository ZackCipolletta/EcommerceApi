using System.ComponentModel.DataAnnotations;

namespace EcommerseApi.ViewModels
{
  public class LoginViewModel
  {
    public string UserName { get; set; }
    public string Password { get; set; }
  }
}