package com.personal.bio.mongo.service;

import java.util.List;

import org.bson.Document;
import org.bson.conversions.Bson;

import com.mongodb.client.AggregateIterable;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.model.FindOneAndUpdateOptions;
import com.mongodb.client.result.DeleteResult;
import com.mongodb.client.result.UpdateResult;
import com.personal.bio.mongo.dao.AggregationPipeLine;

public interface GenericMongoService {

	public void getDbCollectionInstance(String dbName, String collectionName);

	public List<String> getCollectionNames(String dbName);
	
	public <TDocument> long count();

	public <TDocument> long count(Bson filter);

	public <TDocument> FindIterable<TDocument> find();

	public <TResult, TDocument> MongoCursor<TResult> find(Document filter);

	public <TDocument> FindIterable<TDocument> find(Bson filter);
	
	public <TDocument> FindIterable<TDocument> findWithPagination(Bson filter,int skip,int limit,Bson sort);
	
	public <TResult> TResult findFirstDoc(Bson filter);

	public <TResult, TDocument> FindIterable<TResult> find(Bson filter, Class<TResult> resultClass);
	
	public <TDocument> AggregateIterable<TDocument> aggregate(List<? extends Bson> pipeline,final Boolean allowDiskUse);

	public <TDocument> AggregateIterable<TDocument> aggregate(List<? extends Bson> pipeline);

	public <TDocument> AggregateIterable<Document> aggregate(AggregationPipeLine aggregationPipeLine);

	public <TDocument> AggregateIterable<Document> aggregate(AggregationPipeLine aggregationPipeLine,
			Boolean allowDiskUse);

	public <TDocument> TDocument findOneAndUpdate(Bson filter, Bson update);
	
    public <TDocument> TDocument findOneAndUpdate(Bson filter, Bson update, FindOneAndUpdateOptions options);

	public <TDocument> TDocument findOneAndReplace(Bson filter, TDocument replacement);

	public <TDocument> TDocument findOneAndDelete(Bson filter);

	public <TDocument> void insertOne(TDocument document);

	public <TDocument> void insertMany(List<? extends TDocument> documents);

	public <TDocument> UpdateResult updateOne(Bson filter, Bson update);

	public <TDocument> UpdateResult updateMany(Bson filter, Bson update);

	public <TDocument> DeleteResult deleteOne(Bson filter);

	public <TDocument> DeleteResult deleteMany(Bson filter);
}
