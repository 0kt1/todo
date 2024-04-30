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

  String deleteTodo = """

mutation DeleteTask(\$deleteTaskId: ID!) {
  deleteTask(id: \$deleteTaskId) {
    title
  }
}


""";

  String editTodo = """
mutation EditTask(\$editTaskId: ID!, \$title: String!) {
  editTask(id: \$editTaskId, title: \$title) {
    completed
    id
    title
  }
}
""";
}
