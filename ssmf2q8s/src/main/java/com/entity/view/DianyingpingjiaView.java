package com.entity.view;

import com.entity.DianyingpingjiaEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 电影评价
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-05-06 09:28:06
 */
@TableName("dianyingpingjia")
public class DianyingpingjiaView  extends DianyingpingjiaEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DianyingpingjiaView(){
	}
 
 	public DianyingpingjiaView(DianyingpingjiaEntity dianyingpingjiaEntity){
 	try {
			BeanUtils.copyProperties(this, dianyingpingjiaEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
