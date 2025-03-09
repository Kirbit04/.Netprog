using System.Net.Http.Json;
using NyumbaniAdminPanel.Client.Models;

namespace NyumbaniAdminPanel.Client.Services
{
    public class PropertyService : IPropertyService
    {
        private readonly HttpClient _httpClient;

        public PropertyService(HttpClient httpClient)
        {
            _httpClient = httpClient;
        }

        public async Task<List<PropertyModel>> GetPropertiesAsync(FilterModel filters)
        {
            try
            {
                return await _httpClient.GetFromJsonAsync<List<PropertyModel>>("api/properties") ?? new List<PropertyModel>();
            }
            catch
            {
                return new List<PropertyModel>();
            }
        }

        public async Task<PropertyModel?> GetPropertyByIdAsync(int id)
        {
            return await _httpClient.GetFromJsonAsync<PropertyModel>($"api/properties/{id}");
        }

        public async Task<bool> AddPropertyAsync(PropertyModel property)
        {
            var response = await _httpClient.PostAsJsonAsync("api/properties", property);
            return response.IsSuccessStatusCode;
        }

        public async Task<bool> UpdatePropertyAsync(PropertyModel property)
        {
            var response = await _httpClient.PutAsJsonAsync($"api/properties/{property.Id}", property);
            return response.IsSuccessStatusCode;
        }

        public async Task<bool> DeletePropertyAsync(int id)
        {
            var response = await _httpClient.DeleteAsync($"api/properties/{id}");
            return response.IsSuccessStatusCode;
        }

        public async Task<bool> SavePropertyAsync(PropertyModel property)
{
    if (property.Id == 0)
    {
        return await AddPropertyAsync(property);
    }
    else
    {
        return await UpdatePropertyAsync(property);
    }
}

    }
}
