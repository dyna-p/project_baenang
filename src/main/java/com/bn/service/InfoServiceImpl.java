package com.bn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bn.mapper.InfoMapper;
import com.bn.model.CityVo;
import com.bn.model.ContentVo;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class InfoServiceImpl implements InfoService {

	@Autowired
	private InfoMapper InfoMapper;
	
	@Override
	public ContentVo getTourData(String contentid) {
		ContentVo result = InfoMapper.getTourData(contentid);
		return result;
	}
	
	@Override
	public int insertOverview(ContentVo vo) {
		return InfoMapper.insertOverview(vo);
	}
	
	@Override
	public String existOverview(String title) {
		return InfoMapper.existOverview(title);
	}
	
	@Override
	public CityVo getCityData(String cityname) {
		CityVo result = InfoMapper.getCityData(cityname);
		return result;
	}
	
	@Override
	public List<CityVo> getAllCityData(){
		return InfoMapper.getAllCityData();	
	}

}
