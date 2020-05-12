package com.scala.demo.Controller
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping

@Controller
class RootController { @RequestMapping(Array("/"))
  def handleRootRequest(): String = "redirect:/users"
 // def handleRootRequest(): String = "redirect:/login"
}

