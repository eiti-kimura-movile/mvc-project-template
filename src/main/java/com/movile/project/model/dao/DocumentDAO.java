package com.movile.project.model.dao;

import com.movile.project.model.entity.Document;

public interface DocumentDAO {
	
	Document findById(Long id);
	
}
