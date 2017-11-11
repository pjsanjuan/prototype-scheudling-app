package com.zeta.Data.User;

import com.zeta.Models.Training;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class TrainingRowMapper implements RowMapper<Training> {

    @Override
    public Training mapRow(ResultSet rs, int i) throws SQLException {
        Training training = new Training();
        training.setTask(rs.getString("Training"));
        training.setHours(rs.getInt("Hours"));

        return training;
    }
}
