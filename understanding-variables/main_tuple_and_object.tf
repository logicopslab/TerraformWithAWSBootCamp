variable "my_tuple" {
  type = tuple([ string, number, string, number ])
  default = ["husky", 1, "persian", 4]
}

variable "my_object"{
type = object({ name = string, port = list(number)})
default = {
    name = "myports"
    port = [80, 8090, 22]
          }
}