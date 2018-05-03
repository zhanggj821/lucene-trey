package com.njust.lucene.service;


import com.njust.lucene.dao.IndexDao;
import com.njust.lucene.domain.IndexData;
import com.njust.lucene.util.PropertiesUtil;
import org.apache.lucene.analysis.cn.smart.SmartChineseAnalyzer;
import org.apache.lucene.document.*;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;

import java.io.*;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import com.njust.lucene.util.ResourcesUtil;

public class IndexService {


	private Directory dir;
	private static ResourcesUtil resourcesUtil = new ResourcesUtil();
	private IndexDao indexDao;

	public IndexDao getIndexDao() {
		return indexDao;
	}

	public void setIndexDao(IndexDao indexDao) {
		this.indexDao = indexDao;
	}

	/**
	 * 获取IndexWriter实例
	 * @return
	 * @throws Exception
	 */
	private IndexWriter getWriter() throws Exception {
		//Analyzer analyzer  =  new StandardAnalyzer(); // 标准分词器
		SmartChineseAnalyzer analyzer = new SmartChineseAnalyzer();
		IndexWriterConfig iwc = new IndexWriterConfig(analyzer);
		return new IndexWriter(dir, iwc);
	}
	
	/**
	 * 生成索引
	 * @throws Exception
	 */
	public void index() {
		String indexDir = PropertiesUtil.get("indexDir", "indexDir");
		System.out.println("index 开始创建…… in " + indexDir);
		List<IndexData> indexList = indexDao.findAll();
		try {
			index(indexDir, indexList);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 生成索引
	 * @param indexDir  索引的目录
	 * @param indexList  建立索引的数据
	 * */
	private void index(String indexDir, List<IndexData> indexList) throws Exception {
		dir = FSDirectory.open(Paths.get(indexDir));
		IndexWriter writer = getWriter();
		for (IndexData indexData : indexList) {
			Document doc = new Document();
			doc.add(new StringField("id", indexData.getId(), Field.Store.YES));
			doc.add(new StringField("fieldCode", indexData.getFieldCode(), Field.Store.YES));
			doc.add(new TextField("title", indexData.getTitle(), Field.Store.YES));
			doc.add(new TextField("keyWord", indexData.getKeyWord(), Field.Store.YES));
			doc.add(new TextField("projectCode", indexData.getProjectCode(), Field.Store.YES));
			doc.add(new TextField("organization", indexData.getOrganization(), Field.Store.YES));
			doc.add(new TextField("funds", indexData.getFunds(), Field.Store.YES));
			doc.add(new TextField("year", indexData.getYear(), Field.Store.YES));
			writer.addDocument(doc); // 添加文档
		}
		writer.close();
	}



	/**
	 * 读取需要创建索引的资源文件 : 从文本中
	 * @param path 需要读取的文件路径*/
	private static List<String[]> readFromFile(String path){
		List<String[]> Ids = new ArrayList<>();
		File file = new File(path);
		BufferedReader reader = null;
		try {
			reader = new BufferedReader(new FileReader(file));
			String line;
			while ((line = reader.readLine()) != null) {
				Ids.add(line.replace("\n", "").split("\t"));
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (reader != null) {
				try {
					reader.close();
				} catch (IOException e1) {
					e1.printStackTrace();
				}
			}
		}
		return Ids;
	}

	public int count(){
		return indexDao.count();
	}

}
