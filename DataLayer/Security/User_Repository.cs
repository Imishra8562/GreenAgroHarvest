using Domain;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;

namespace DataLayer
{
    public class User_Repository : BaseRepository<User>
    {
        public IList<User_Business> ListUser(int? User_Id, int? User_Role_Id, string Email_Id, string Mobile_No)
        {
            IList<User_Business> List_Obj = null;

            try
            {
                DatabaseProviderFactory factory = new DatabaseProviderFactory();
                Database _db = factory.Create("DefConn");
                DbCommand sqlCommand = _db.GetStoredProcCommand("sp_List_User");
                DataSet dataSet = new DataSet();

                var P1 = sqlCommand.CreateParameter();
                P1.ParameterName = "User_Id";
                P1.Value = User_Id;
                sqlCommand.Parameters.Add(P1);

                var P2 = sqlCommand.CreateParameter();
                P2.ParameterName = "User_Role_Id";
                P2.Value = User_Role_Id;
                sqlCommand.Parameters.Add(P2);

                var P3 = sqlCommand.CreateParameter();
                P3.ParameterName = "Email_Id";
                P3.Value = Email_Id;
                sqlCommand.Parameters.Add(P3);

                var P4 = sqlCommand.CreateParameter();
                P4.ParameterName = "Mobile_No";
                P4.Value = Mobile_No;
                sqlCommand.Parameters.Add(P4);

                _db.LoadDataSet(sqlCommand, dataSet, TableName);

                DataSet ds = dataSet;
                if (ds != null && ds.Tables != null && ds.Tables.Count > 0 && ds.Tables[0].Rows != null)
                {
                    List_Obj = DataBaseUtil.DataTableToList<User_Business>(ds.Tables[0]);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return List_Obj;
        }

        public User_Business AuthenticateUser(string Mobile_No, byte[] Password)
        {
            User_Business User_Business_Obj = new User_Business();
            IList<User_Business> List_Obj = null;

            try
            {
                DatabaseProviderFactory factory = new DatabaseProviderFactory();
                Database _db = factory.Create("DefConn");
                DbCommand sqlCommand = _db.GetStoredProcCommand("sp_Authenticate_User");
                DataSet dataSet = new DataSet();

                var UserName = sqlCommand.CreateParameter();
                UserName.ParameterName = "Mobile_No";
                UserName.Value = Mobile_No;
                sqlCommand.Parameters.Add(UserName);

                var password = sqlCommand.CreateParameter();
                password.ParameterName = "Password";
                password.Value = Password;
                sqlCommand.Parameters.Add(password);

                sqlCommand.CommandTimeout = 600;

                _db.LoadDataSet(sqlCommand, dataSet, TableName);

                DataSet ds = dataSet;
                if (ds != null && ds.Tables != null && ds.Tables.Count > 0 && ds.Tables[0].Rows != null)
                {
                    List_Obj = DataBaseUtil.DataTableToList<User_Business>(ds.Tables[0]);
                }
                User_Business_Obj = List_Obj.FirstOrDefault();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return User_Business_Obj;
        }

        public User ListAuthenticateUser(string email_Id, byte[] password)
        {
            throw new NotImplementedException();
        }
    }
}
