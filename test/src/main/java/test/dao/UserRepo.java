// UserRepo.java
package test.dao;

import test.controller.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.util.Optional;


// 유저 레포지토리
@Repository
public interface UserRepo extends JpaRepository<User, Long> {
	
    Optional<User> findByUserId(String userId);
    boolean existsByUserId(String userId);
}