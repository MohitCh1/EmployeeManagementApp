using System;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI;
using Newtonsoft.Json;

namespace EmployeeWebApp
{
    public partial class AddEmployee : Page
    {
        private static readonly HttpClient _http = new HttpClient();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected async void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                var emp = new
                {
                    name = txtName.Text,
                    email = txtEmail.Text,
                    phone = txtPhone.Text,
                    department = txtDepartment.Text,
                    state = txtState.Text,
                    district = txtDistrict.Text
                };

                string json = JsonConvert.SerializeObject(emp);
                var content = new StringContent(json, Encoding.UTF8, "application/json");

                HttpResponseMessage response =
                    await _http.PostAsync("https://localhost:7180/api/employees", content);

                if (response.IsSuccessStatusCode)
                {
                    lblMessage.Text = "Employee added successfully!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblMessage.Text = "Error saving employee.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Exception: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}
