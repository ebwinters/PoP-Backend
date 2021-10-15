﻿using PopLibrary.SqlModels;
using System.Collections.Generic;
using System.Data;

namespace PopLibrary.Data
{
    public class AuctionBidData
    {
        private SqlAdapter _sqlAdapter;

        public AuctionBidData(SqlAdapter sqlAdapter)
        {
            _sqlAdapter = sqlAdapter;
        }

        public IEnumerable<AuctionBid> GetAuctionBids()
        {
            return _sqlAdapter.ExecuteStoredProcedure<AuctionBid>("dbo.GetAuctionBids");
        }

        public void AddOrUpdateAuctionBid(AuctionBid itemToUpdate)
        {
            var parameters = new List<StoredProcedureParameter>();

            if (itemToUpdate.Id != null)
            {
                parameters.Add(new StoredProcedureParameter { Name = "@AuctionBidId", DbType = SqlDbType.Int, Value = itemToUpdate.Id });
            }

            parameters.AddRange(new List<StoredProcedureParameter>{
                    new StoredProcedureParameter { Name = "@AuctionId", DbType = SqlDbType.Int, Value = itemToUpdate.AuctionId},
                    new StoredProcedureParameter { Name = "@Amount", DbType = SqlDbType.Decimal, Value = itemToUpdate.Amount },
                    new StoredProcedureParameter { Name = "@Email", DbType = SqlDbType.NVarChar, Value = itemToUpdate.Email },
                    new StoredProcedureParameter { Name = "@Timestamp", DbType = SqlDbType.DateTime, Value = itemToUpdate.Timestamp }
                }
            );

            _sqlAdapter.ExecuteStoredProcedure<int>("dbo.AddOrUpdateAuctionBid", parameters);
        }

        public void DeleteAuctionBid(int auctionBidId)
        {
            var parameters = new List<StoredProcedureParameter>() {
                new StoredProcedureParameter { Name = "@AuctionBidId", DbType = SqlDbType.Int, Value = auctionBidId }
            };

            _sqlAdapter.ExecuteStoredProcedure<int>("dbo.DeleteAuctionBid", parameters);
        }
    }
}
