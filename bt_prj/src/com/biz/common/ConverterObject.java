package com.biz.common;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;


public class ConverterObject {

	public Map convertObjectToMap(Object obj){
		Map map = new HashMap();
		Field[] fields = obj.getClass().getDeclaredFields();
		for(int i=0; i <fields.length; i++){
			fields[i].setAccessible(true);
			try{
				map.put(fields[i].getName(), fields[i].get(obj));
			}catch(Exception e){
				e.printStackTrace();
			}
		}        
		return map;
	}


	public Object convertMapToObject(Map<String,Object> map,Object obj){
		String keyAttribute = null;
		String setMethodString = "set";
		String methodString = null;
		Iterator itr = map.keySet().iterator();

		Method[] methods = obj.getClass().getDeclaredMethods();
		while(itr.hasNext()){
			keyAttribute = (String) itr.next();
			methodString = setMethodString+keyAttribute.substring(0,1).toUpperCase()+keyAttribute.substring(1);            
			for(int i=0;i<methods.length;i++){
				if(methodString.equals(methods[i].getName())){
					try{
						methods[i].invoke(obj, map.get(keyAttribute));
					}catch(Exception e){
						e.printStackTrace();
					}
				}
			}
		}
		return obj;
	}
}

