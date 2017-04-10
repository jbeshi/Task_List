resource "aws_api_gateway_rest_api" "notes" {
  name        = "notes"
  description = "API to manage user notes"
}

resource "aws_api_gateway_resource" "notes" {
  rest_api_id = "${aws_api_gateway_rest_api.notes.id}"
  parent_id   = "${aws_api_gateway_rest_api.notes.root_resource_id}"
  path_part   = "notes"
}

resource "aws_api_gateway_method" "deleteNote" {
  rest_api_id   = "${aws_api_gateway_rest_api.notes.id}"
  resource_id   = "${aws_api_gateway_resource.notes.id}"
  http_method   = "DELETE"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "getNotes" {
  rest_api_id   = "${aws_api_gateway_rest_api.notes.id}"
  resource_id   = "${aws_api_gateway_resource.notes.id}"
  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "createNote" {
  rest_api_id   = "${aws_api_gateway_rest_api.notes.id}"
  resource_id   = "${aws_api_gateway_resource.notes.id}"
  http_method   = "POST"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "updateNote" {
  rest_api_id   = "${aws_api_gateway_rest_api.notes.id}"
  resource_id   = "${aws_api_gateway_resource.notes.id}"
  http_method   = "PUT"
  authorization = "NONE"
}

resource "aws_api_gateway_resource" "notesByUser" {
  rest_api_id = "${aws_api_gateway_rest_api.notes.id}"
  parent_id   = "${aws_api_gateway_rest_api.notes.root_resource_id}"
  path_part   = "notesByUser"
}

resource "aws_api_gateway_method" "getNotesByUser" {
  rest_api_id   = "${aws_api_gateway_rest_api.notes.id}"
  resource_id   = "${aws_api_gateway_resource.notesByUser.id}"
  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_api_gateway_resource" "notesshared" {
  rest_api_id = "${aws_api_gateway_rest_api.notes.id}"
  parent_id   = "${aws_api_gateway_rest_api.notes.root_resource_id}"
  path_part   = "notesshared"
}

resource "aws_api_gateway_method" "getNotesShared" {
  rest_api_id   = "${aws_api_gateway_rest_api.notes.id}"
  resource_id   = "${aws_api_gateway_resource.notesshared.id}"
  http_method   = "GET"
  authorization = "NONE"
}
