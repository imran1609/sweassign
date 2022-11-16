package swe.assign.student.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import swe.assign.student.model.UserInfo;

@Repository
public interface UserDao extends CrudRepository<UserInfo, Long> {
}
