using Domain;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer
{
    public  class AboutDetails_Repositry : BaseRepository<AboutDetails>
    {
        public IList<AboutDetails_Business> ListAboutDetails(int? AboutDetails_Id,int? About_Id, int? Banner_Id)
        {
            IList<AboutDetails_Business> List_Obj = null;
            try
            {
                DatabaseProviderFactory factory = new DatabaseProviderFactory();
                Database _db = factory.Create("DefConn");
                DbCommand sqlCommand = _db.GetStoredProcCommand("sp_List_AboutDetails");
                sqlCommand.CommandTimeout = 120;
                DataSet dataSet = new DataSet();

                var P1 = sqlCommand.CreateParameter();
                P1.ParameterName = "About_Id";
                P1.Value = About_Id;
                sqlCommand.Parameters.Add(P1);

                var P2 = sqlCommand.CreateParameter();
                P2.ParameterName = "AboutDetails_Id";
                P2.Value = AboutDetails_Id;
                sqlCommand.Parameters.Add(P2);

                var P3 = sqlCommand.CreateParameter();
                P3.ParameterName = "Banner_Id";
                P3.Value = Banner_Id;
                sqlCommand.Parameters.Add(P3);

                
                _db.LoadDataSet(sqlCommand, dataSet, TableName);

                DataSet ds = dataSet;
                if (ds != null && ds.Tables != null && ds.Tables.Count > 0 && ds.Tables[0].Rows != null)
                {
                    List_Obj = DataBaseUtil.DataTableToList<AboutDetails_Business>(ds.Tables[0]);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return List_Obj;
        }
    }
}
