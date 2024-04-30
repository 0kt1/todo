class Mutations {
  String addTodo = """
mutation AddTodo(\$title: String!) {
  addTodo(title: \$title) {
    completed
    id
    title
  }
}
  """;

  String toggleTodo = """

mutation ToggleTodoStatus(\$toggleTodoStatusId: ID!) {
  toggleTodoStatus(id: \$toggleTodoStatusId) {
    completed
    id
    title
  }
}

""";
}
