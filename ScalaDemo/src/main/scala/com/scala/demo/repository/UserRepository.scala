package com.scala.demo.repository

import org.springframework.data.repository.CrudRepository
import com.scala.demo.dto.UserInfo
import java.lang.Long

trait UserRepository extends CrudRepository [UserInfo,Long]