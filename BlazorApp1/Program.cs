using Microsoft.EntityFrameworkCore;
using Pomelo.EntityFrameworkCore.MySql;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Configuration;
using System;
using BlazorApp1.Components;
using BlazorApp1.NewFolder1;

var builder = WebApplication.CreateBuilder(args);

// Load Configuration
builder.Configuration
    .SetBasePath(Directory.GetCurrentDirectory())
    .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
    .AddEnvironmentVariables();

// Database Connection
var connectionString = builder.Configuration.GetConnectionString("DefaultConnection");
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseMySql(connectionString, ServerVersion.AutoDetect(connectionString)));

// Add Services
builder.Services.AddRazorComponents()
    .AddInteractiveServerComponents();

// ✅ Only register `ApplicationDbContext` once (removed duplicate)
builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri("https://your-base-address.com") });

// ✅ Build the application only ONCE
var app = builder.Build();

// ✅ DO NOT call `builder.Build()` again
// ❌ await builder.Build().RunAsync(); // This is incorrect and removed

// Configure the HTTP request pipeline
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error", createScopeForErrors: true);
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseAntiforgery();
app.UseStaticFiles(); // ✅ Serves JS, CSS, and Blazor resources

app.MapStaticAssets();
app.MapRazorComponents<App>()
    .AddInteractiveServerRenderMode();

await app.RunAsync(); // ✅ Use this instead of `builder.Build().RunAsync();`
