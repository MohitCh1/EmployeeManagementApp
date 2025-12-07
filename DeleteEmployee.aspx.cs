using System;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.UI;

namespace EmployeeWebApp
{
    public partial class DeleteEmployee : Page
    {
        private static readonly HttpClient client = new HttpClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            // No async here, safe for WebForms
        }

        protected async void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                int employeeId = Convert.ToInt32(Request.QueryString["id"]);

                string apiUrl = $"https://localhost:7180/api/employees/{employeeId}";

                HttpResponseMessage response = await client.DeleteAsync(apiUrl);

                if (response.IsSuccessStatusCode)
                {
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    lblMessage.Text = "Failed to delete employee.";
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error while deleting employee.";
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}
