package com.snnew.www.dao;

/**
 * Created by JPAM on 2017/6/14.
 */
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * RowMapper
 * @version v1.0
 */
public interface RowMapper
{
    public Object mapRow(ResultSet rs, int index)
            throws SQLException;
}