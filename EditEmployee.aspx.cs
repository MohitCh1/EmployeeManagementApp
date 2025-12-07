using System;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.UI;
using Newtonsoft.Json;

namespace EmployeeWebApp
{
    public partial class EditEmployee : Page
    {
        private static readonly HttpClient client = new HttpClient();
        int employeeId;

        protected async Task Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    employeeId = int.Parse(Request.QueryString["id"]);
                    await LoadEmployee(employeeId);
                }
            }
        }

        private async Task LoadEmployee(int id)
        {
            var response = await client.GetAsync($"https://localhost:7180/api/employees/{id}");

            if (!response.IsSuccessStatusCode)
            {
                lblMessage.Text = "Failed to load employee.";
                return;
            }

            string json = await response.Content.ReadAsStringAsync();
            dynamic emp = JsonConvert.DeserializeObject(json);

            txtName.Text = emp.name;
            txtEmail.Text = emp.email;
            txtPhone.Text = emp.phone;
            txtDepartment.Text = emp.department;
            txtState.Text = emp.state;
            txtDistrict.Text = emp.district;
        }

        protected async void btnUpdate_Click(object sender, EventArgs e)
        {
            employeeId = int.Parse(Request.QueryString["id"]);

            var employee = new
            {
                employeeId = employeeId,
                name = txtName.Text,
                email = txtEmail.Text,
                phone = txtPhone.Text,
                department = txtDepartment.Text,
                state = txtState.Text,
                district = txtDistrict.Text
            };

            // Convert object → JSON
            var json = JsonConvert.SerializeObject(employee);
            var content = new StringContent(json, System.Text.Encoding.UTF8, "application/json");

            var response = await client.PutAsync(
                $"https://localhost:7180/api/employees/{employeeId}", content);

            if (response.IsSuccessStatusCode)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                lblMessage.Text = "Error updating employee.";
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}
