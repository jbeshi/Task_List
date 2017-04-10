resource "aws_api_gateway_rest_api" "Task_API" {
  name        = "Task_API"
  description = "API to manage user tasks"
}

resource "aws_api_gateway_resource" "tasks" {
  rest_api_id = "${aws_api_gateway_rest_api.Task_API.id}"
  parent_id   = "${aws_api_gateway_rest_api.Task_API.root_resource_id}"
  path_part   = "tasks"
}

resource "aws_api_gateway_method" "deleteTask" {
  rest_api_id   = "${aws_api_gateway_rest_api.Task_API.id}"
  resource_id   = "${aws_api_gateway_resource.tasks.id}"
  http_method   = "DELETE"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "getTasks" {
  rest_api_id   = "${aws_api_gateway_rest_api.Task_API.id}"
  resource_id   = "${aws_api_gateway_resource.tasks.id}"
  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "createTask" {
  rest_api_id   = "${aws_api_gateway_rest_api.Task_API.id}"
  resource_id   = "${aws_api_gateway_resource.tasks.id}"
  http_method   = "POST"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "updateTask" {
  rest_api_id   = "${aws_api_gateway_rest_api.Task_API.id}"
  resource_id   = "${aws_api_gateway_resource.tasks.id}"
  http_method   = "PUT"
  authorization = "NONE"
}


