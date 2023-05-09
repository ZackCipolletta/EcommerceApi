using System.Text;
using EcommerseApi.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);


builder.Services.AddControllers();

builder.Services.AddDbContext<EcommerseApiContext>(
    dbContextOptions => dbContextOptions.UseMySql(
        builder.Configuration["ConnectionStrings:DefaultConnection"],
        ServerVersion.AutoDetect(builder.Configuration["ConnectionStrings:DefaultConnection"])
    ) 
);


builder.Services.AddIdentity<ApplicationUser, IdentityRole>()
    .AddEntityFrameworkStores<EcommerseApiContext>()
    .AddDefaultTokenProviders();

builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

app.UseCors(builder => builder
    .AllowAnyOrigin()
    .AllowAnyMethod()
    .AllowAnyHeader());


if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}
else
{
    app.UseHttpsRedirection();
}

app.UseAuthentication(); // Add authentication middleware before authorization middleware
app.UseAuthorization();

app.MapControllers();

app.Run();