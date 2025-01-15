using DatabaseTask.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.EntityFrameworkCore.SqlServer;

var builder = WebApplication.CreateBuilder(args);

// Lisame teenused konteinerisse
builder.Services.AddControllersWithViews();

// Lisame DbContext teenuse koos �henduse stringiga
builder.Services.AddDbContext<DatabaseTaskDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection"))
);

// Kui kasutad eelmist koodi, siis v�iks olla ka kommentaaris olev osa:
// builder.Services.AddDbContext<DatabaseTaskDbContext>(options => 
//     options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

// �lej��nud seadistused
var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
}
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

// Defineeri p�hitee kaardistamine
app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
