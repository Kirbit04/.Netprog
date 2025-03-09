namespace NyumbaniAdminPanel.Client.Models
{
    public class FilterModel
    {
        public string Category { get; set; } = string.Empty;
        public string Location { get; set; } = string.Empty;
        public decimal? MaxPrice { get; set; }
    }
}
