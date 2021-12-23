package com.qtqt.mvc.mypage.model.vo;

import java.util.Date;
import java.util.List;

import com.qtqt.mvc.board.model.vo.Reply;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Board {

	private int no;
	
	private int rowNum;
	
	private int writerNo;
	
	private String writerId;
	
	private String title;
	
	private String content;
	
	private String originalFileName;
	
	private String renamedFileName;
	
	private int hits;
	
	private List<Reply> replies;
	
	private Date createDate;
	
	private Date modifyDate;
}