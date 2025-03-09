using NyumbaniAdminPanel.Client.Models;

namespace NyumbaniAdminPanel.Client.Services
{
    public interface IPropertyService
    {
        Task<List<PropertyModel>> GetPropertiesAsync(FilterModel filters);
        Task<PropertyModel?> GetPropertyByIdAsync(int id);
        Task<bool> AddPropertyAsync(PropertyModel property);
        Task<bool> UpdatePropertyAsync(PropertyModel property);
        Task<bool> DeletePropertyAsync(int id);
        Task<bool> SavePropertyAsync(PropertyModel property);

    }
}
