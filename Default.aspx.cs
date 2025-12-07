using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.UI;
using Newtonsoft.Json;

namespace EmployeeWebApp
{
    public partial class Default : Page
    {
        private static readonly HttpClient client = new HttpClient();

        protected async void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                await LoadEmployees();
            }
        }

        private async Task LoadEmployees()
        {
            try
            {
                // USE HTTP 5130 (Your API is running here)
                var response = await client.GetAsync("http://localhost:5130/api/employees");

                if (!response.IsSuccessStatusCode)
                {
                    lblMessage.Text = "Failed to load data.";
                    return;
                }

                string json = await response.Content.ReadAsStringAsync();
                var employees = JsonConvert.DeserializeObject<List<dynamic>>(json);

                GridEmployees.DataSource = employees;
                GridEmployees.DataBind();
            }
            catch
            {
                lblMessage.Text = "Error while loading employees.";
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddEmployee.aspx");
        }
    }
}
