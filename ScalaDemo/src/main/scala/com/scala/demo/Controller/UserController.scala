package com.scala.demo.Controller

import java.lang.Long
import javax.validation.Valid

import com.scala.demo.dto.UserInfo

import com.scala.demo.repository.UserRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.validation.BindingResult
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation._
import org.springframework.boot.autoconfigure.EnableAutoConfiguration
import javax.sql.DataSource

@Controller
@RequestMapping(Array("/users"))
class UserController @Autowired()(private val userRepository: UserRepository, @Autowired val dataSource: DataSource) {

  @GetMapping
  def list(model: Model) = {
    val users = userRepository.findAll()
    //  def toString: String =users;
    print("show user inside user control"+users)
   model.addAttribute("users", users)
    "list"
  }

 
  @GetMapping(params = Array("form"))
  def createForm(model: Model) = {
    model.addAttribute("user", new UserInfo())
    println("inside create form sub")
    "create"
  }

  
  @PostMapping(Array("/form"))
  def create(@Valid@ModelAttribute("user") user:UserInfo ,bindingResult: BindingResult,model:Model) = {
      //Valid user:UserInfo, bindingResult: BindingResult,model:Model) =
    if (bindingResult.hasErrors()) {
      "create"
    } else {
      userRepository.save(user)
      "redirect:/users"
    }
  }

  @GetMapping(value = Array("/delete/{id}"))
  def delete(@PathVariable("id") id: Long) = {
    userRepository.delete(id)
    "redirect:/users"
  }
  
  @GetMapping(value = Array("/edit/{id}"))
  def edit(@PathVariable("id") id: Long, model: Model) = {
    model.addAttribute("users", userRepository.findOne(id))
    "edit"
  }
  
   @PostMapping(Array("/edit/users/update"))
  def update(@Valid@ModelAttribute("users") user:UserInfo ,bindingResult: BindingResult,model:Model) = {
    if (bindingResult.hasErrors()) {
      "users/edit"
    } else {
      userRepository.save(user)
      "redirect:/users"
     }
   }
  
}
  
