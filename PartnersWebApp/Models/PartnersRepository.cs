using Dapper;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace PartnersWebApp.Models
{
    public class PartnersRepository
    {
        private readonly string connectionString;

        
        public PartnersRepository()
         {
             connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
         }
        

        public IEnumerable<Partner> getPartners()
        {
            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();
                return connection.Query<Partner>("GetAllPartners",commandType: CommandType.StoredProcedure);
            }
        }

        public bool insertPartner(string firstName, string lastName, string address,
            string partnerNumber, string croatianPIN, int partnerTypeID, string email, bool isForeign,
            string externalCode, string gender)
        {
            croatianPIN = string.IsNullOrEmpty(croatianPIN) ? null : croatianPIN;
            using (var connection = new SqlConnection(connectionString))
            {
                var parameters = new DynamicParameters();
                parameters.Add("@FirstName", firstName);
                parameters.Add("@LastName", lastName);
                parameters.Add("@Address", address);
                parameters.Add("@PartnerNumber", partnerNumber);
                parameters.Add("@CroatianPIN", croatianPIN);
                parameters.Add("@PartnerTypeId", partnerTypeID);
                parameters.Add("@CreateByUser", email);
                parameters.Add("@IsForeign", isForeign);
                parameters.Add("@ExternalCode", externalCode);
                parameters.Add("@Gender", gender);
                parameters.Add("@isValid", dbType: DbType.Boolean, direction: ParameterDirection.Output);

                connection.Execute("InsertPartner", parameters, commandType: CommandType.StoredProcedure);
                bool isValid = parameters.Get<bool>("@isValid");
                return isValid;

            }
        }
    }
}