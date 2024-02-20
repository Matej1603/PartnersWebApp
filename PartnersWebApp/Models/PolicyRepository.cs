using Dapper;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace PartnersWebApp.Models
{
    public class PolicyRepository
    {
        private readonly string connectionString;


        public PolicyRepository()
        {
            connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        }

        public bool insertPolicy(Policy policy)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                var parameters = new DynamicParameters();
                parameters.Add("@partnerId", policy.PartnersId);
                parameters.Add("@policyNumber", policy.PolicyNumber);
                parameters.Add("@amount", policy.Amount);
                parameters.Add("@isValid", dbType: DbType.Boolean, direction: ParameterDirection.Output);

                connection.Execute("InsertPolicy", parameters, commandType: CommandType.StoredProcedure);
                bool isValid = parameters.Get<bool>("@isValid");
                return isValid;

            }
        }
    }
}