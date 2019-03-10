package com.iot.dao;

import com.iot.entity.Rank;

public interface RankMapper {
    int deleteByPrimaryKey(String username);

    int insert(Rank record);

    int insertSelective(Rank record);

    Rank selectByPrimaryKey(String username);

    int updateByPrimaryKeySelective(Rank record);

    int updateByPrimaryKey(Rank record);
}