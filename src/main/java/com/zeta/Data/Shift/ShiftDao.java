package com.zeta.Data.Shift;

import com.zeta.Configurations.PersistenceConfig;
import com.zeta.Data.User.UserDao;
import com.zeta.Data.User.UserData;
import com.zeta.Models.Shift;
import com.zeta.Models.ShiftRaw;
import com.zeta.Models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

/**
 * Concrete implementation of the ShiftInterface class.
 */
@Repository
public class ShiftDao implements ShiftInterface {
    private JdbcTemplate jdbcTemplate = new JdbcTemplate(new PersistenceConfig().dataSource());
    private UserData userData = new UserDao();

    public ShiftDao() {
    }

    //ShiftRaw Methods
    /**
     * Returns a list of ShiftRaw objects.
     * @return List<ShiftRaw>
     */
    @Override
    public List<ShiftRaw> getShiftRaws() {
        String shiftRawQuery = "SELECT * FROM Shift";
        return jdbcTemplate.query(shiftRawQuery, new ShiftRawRowMapper());
    }

    @Override
    public ShiftRaw getShiftRaw(long id) {
        try {
            String sql = "SELECT * FROM Shift WHERE ID=?";
            ShiftRaw shiftRaw = jdbcTemplate.queryForObject(sql, new ShiftRawRowMapper(), id);
            return shiftRaw;
        } catch (Exception e){
            return null;
        }

    }

    /**
     * Adds a new row to the Shift table.
     * @param shiftRaw ShiftRaw object to save
     * @return True if successful, false otherwise
     */
    @Override
    public boolean saveShiftRaw(ShiftRaw shiftRaw) {
        try {
            String sql = "INSERT INTO Shift(Title, Start, End, Username, Campus) " +
                    "VALUES (?, ?, ?, ?, ?)";
            jdbcTemplate.update(sql, shiftRaw.getTitle(), shiftRaw.getStart(), shiftRaw.getEnd(), shiftRaw.getUsername(), shiftRaw.getCampus().toString());
            return true;
        } catch (Exception e){
            return false;
        }
    }

    /**
     * Deletes a row from the Shift table
     * @param id id of Shift to delete
     * @return True if successful, false other wise
     */
    @Override
    public boolean deleteShift(long id) {
        try {
            String sql = "DELETE FROM Shift WHERE ID=?";
            jdbcTemplate.update(sql, id);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
