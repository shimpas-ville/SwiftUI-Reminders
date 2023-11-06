import Foundation

class TaskListViewModel: ObservableObject {
    @Published var tasks: [Task] = [Task(id: UUID(), title: "Teste de Tarefa para o foundations", isCompleted: true),Task(id: UUID(), title: "Outra tarefa")]
    
    func addTask(title: String) {
        let newTask = Task(title: title)
        tasks.append(newTask)
    }
    
    func toggleTaskCompleted(task: Task) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].isCompleted.toggle()
        }
    }
    
    func removeTask(task: Task) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks.remove(at: index)
        }
    }
}
