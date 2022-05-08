package com.personal.bio.mongo.service;

import java.util.List;

import org.bson.Document;
import org.bson.conversions.Bson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.mongodb.client.AggregateIterable;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.FindOneAndUpdateOptions;
import com.mongodb.client.result.DeleteResult;
import com.mongodb.client.result.UpdateResult;
import com.personal.bio.mongo.dao.AggregationPipeLine;
import com.personal.bio.mongo.dao.GenericMongoDAO;

@Service("genericMongoService")
@Scope("prototype")
public class GenericMongoServiceImpl implements GenericMongoService{

	@Autowired
	private GenericMongoDAO genericMongoDAO;
	
	private MongoCollection<?> collection = null;
	private MongoDatabase mongoDatabase;
	private List<?> collectionNames;
	
	public <TDocument> MongoCollection<TDocument> getCollection() {
		return (MongoCollection<TDocument>) collection;
	}

	private <TDocument> void setCollection(MongoCollection<TDocument> collection) {
		this.collection = collection;
	}
	
	public MongoDatabase getMongoDatabase() {
		return mongoDatabase;
	}

	private void setMongoDatabase(MongoDatabase mongoDatabase) {
		this.mongoDatabase = mongoDatabase;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public  List<String> getCollectionNames(String dbName) {
		return genericMongoDAO.getCollectionNames(dbName);
	}
	
	public  void  getDbCollectionInstance(String dbName,String collectionName){
		 this.setCollection(genericMongoDAO.getDbCollectionInstance(dbName,collectionName));
		 setMongoDatabase(genericMongoDAO.getMongoDatabase());
	}
	
	@Autowired
	public void setgenericMongoDAO(GenericMongoDAO genericMongoDAO) {
		this.genericMongoDAO = genericMongoDAO;
	}

	@Override
	public <TDocument>long  count() {
		return genericMongoDAO.count(getCollection());
	}

	@Override
	public <TDocument> long count(Bson filter) {
		return genericMongoDAO.count(getCollection(),filter);
	}

	@SuppressWarnings("unchecked")
	@Override
	public <TDocument> FindIterable<TDocument> find() {
		return (FindIterable<TDocument>) genericMongoDAO.find(getCollection());
	}

	@Override
	public <TResult, TDocument> MongoCursor<TResult> find(Document filter) {
		return genericMongoDAO.find(getCollection(),filter);
	}

	@Override
	public <TDocument> FindIterable<TDocument> find(Bson filter) {
		return (FindIterable<TDocument>) genericMongoDAO.find(getCollection(),filter);
	}
	
	@Override
	public <TDocument> FindIterable<TDocument> findWithPagination(Bson filter,int skip,int limit,Bson sort){
		return (FindIterable<TDocument>) genericMongoDAO.find(getCollection(),filter,skip,limit,sort); 
	}

	@Override
	public <TResult, TDocument> FindIterable<TResult> find(Bson filter, Class<TResult> resultClass) {
		return (FindIterable<TResult>) genericMongoDAO.find(getCollection(),filter,resultClass);
	}

	@Override
	public <TDocument> AggregateIterable<TDocument> aggregate(List<? extends Bson> pipeline) {
		return (AggregateIterable<TDocument>) genericMongoDAO.aggregate(getCollection(), pipeline);
	}
	
	@Override
	public <TDocument> AggregateIterable<TDocument> aggregate(List<? extends Bson> pipeline, Boolean allowDiskUse) {
		return (AggregateIterable<TDocument>) genericMongoDAO.aggregate(getCollection(), pipeline,allowDiskUse);
	}

	@Override
	public <TDocument> AggregateIterable<Document> aggregate(AggregationPipeLine aggregationPipeLine) {
		return genericMongoDAO.aggregate(getMongoDatabase(), aggregationPipeLine);
	}

	@Override
	public <TDocument> AggregateIterable<Document> aggregate(AggregationPipeLine aggregationPipeLine,
			Boolean allowDiskUse) {
		return genericMongoDAO.aggregate(getMongoDatabase(), aggregationPipeLine, allowDiskUse);
	}

	@SuppressWarnings("unchecked")
	@Override
	public <TDocument> TDocument findOneAndUpdate(Bson filter, Bson update) {
		return (TDocument) genericMongoDAO.findOneAndUpdate(getCollection(), filter, update);
	}
	
    @SuppressWarnings("unchecked")
	public <TDocument> TDocument findOneAndUpdate(Bson filter, Bson update, FindOneAndUpdateOptions options){
		return (TDocument) genericMongoDAO.findOneAndUpdate(getCollection(), filter, update,options);
    }

	@Override
	public <TDocument> TDocument findOneAndReplace(Bson filter, TDocument replacement) {
		return genericMongoDAO.findOneAndReplace(getCollection(), filter, replacement);
	}

	@Override
	public <TDocument> TDocument findOneAndDelete(Bson filter) {
		return (TDocument) genericMongoDAO.findOneAndDelete(getCollection(), filter);
	}

	@Override
	public <TDocument> void insertOne(TDocument document) {
		genericMongoDAO.insertOne(getCollection(), document);		
	}

	@Override
	public <TDocument> void insertMany(List<? extends TDocument> documents) {
		genericMongoDAO.insertMany(getCollection(), documents);	
	}

	@Override
	public <TDocument> UpdateResult updateOne(Bson filter, Bson update) {
		return genericMongoDAO.updateOne(getCollection(), filter, update);
	}

	@Override
	public <TDocument> UpdateResult updateMany(Bson filter, Bson update) {
		return genericMongoDAO.updateMany(getCollection(), filter, update);
	}

	@Override
	public <TDocument> DeleteResult deleteOne(Bson filter) {
		return genericMongoDAO.deleteOne(getCollection(), filter);
	}

	@Override
	public <TDocument> DeleteResult deleteMany(Bson filter) {
		return genericMongoDAO.deleteMany(getCollection(), filter);
	}

	@Override
	public <TResult> TResult findFirstDoc(Bson filter) {
		return (TResult) genericMongoDAO.find(getCollection(),filter).first();
	}
}
