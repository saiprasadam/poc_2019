package com.scala.demo

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.CommandLineRunner
import org.springframework.stereotype.Component
import com.scala.demo.dto.UserInfo
import com.scala.demo.repository.UserRepository

@Component
class DbConfig @Autowired()(val userRepository: UserRepository) extends CommandLineRunner {
  override def run(args: String*): Unit = {
    (1 to 4).foreach(i => {
      if(i.equals(1))
      userRepository.save(new UserInfo(id=null, name =s"Sai", address = s"$i main road ", phoneNo = s"920101213$i",rank=s"$i"))
        else if(i.equals(2))
      userRepository.save(new UserInfo(id=null, name =s"John", address = s"$i cross street ", phoneNo = s"946101213$i",rank=s"$i"))
      else if(i.equals(3))
      userRepository.save(new UserInfo(id=null, name =s"Vaseem", address = s"$i main road ", phoneNo = s"950106213$i",rank=s"$i"))
      else if (i.equals(4))
      userRepository.save(new UserInfo(id=null, name =s"Akshit", address = s"$i main road ", phoneNo = s"970101290$i",rank=s"$i"))
   
     
    })
    
  }
/*  def assignName(userInfo:UserInfo) = {
   if(userInfo.rank==1){
        userInfo.setName("Siva")
        userRepository.save(userInfo)
      }
  }*/
         
}