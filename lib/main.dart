import 'package:flutter/material.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Today List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF7F4EF),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2F6F73),
          brightness: Brightness.light,
        ),
        fontFamily: 'sans-serif',
      ),
      home: const TodoHomePage(),
    );
  }
}

enum TodoFilter { all, active, done }

class TodoItem {
  TodoItem({required this.title, this.done = false});

  final String title;
  bool done;
}

class TodoHomePage extends StatefulWidget {
  const TodoHomePage({super.key});

  @override
  State<TodoHomePage> createState() => _TodoHomePageState();
}

class _TodoHomePageState extends State<TodoHomePage> {
  final TextEditingController _taskController = TextEditingController();
  final List<TodoItem> _todos = <TodoItem>[
    TodoItem(title: 'Plan the day', done: true),
    TodoItem(title: 'Review project tasks'),
    TodoItem(title: 'Take a proper break'),
  ];
  TodoFilter _filter = TodoFilter.all;

  @override
  void dispose() {
    _taskController.dispose();
    super.dispose();
  }

  List<TodoItem> get _visibleTodos {
    return switch (_filter) {
      TodoFilter.active => _todos.where((todo) => !todo.done).toList(),
      TodoFilter.done => _todos.where((todo) => todo.done).toList(),
      TodoFilter.all => _todos,
    };
  }

  int get _completedCount => _todos.where((todo) => todo.done).length;

  void _addTodo() {
    final String title = _taskController.text.trim();
    if (title.isEmpty) {
      return;
    }

    setState(() {
      _todos.insert(0, TodoItem(title: title));
      _taskController.clear();
      _filter = TodoFilter.all;
    });
  }

  void _toggleTodo(TodoItem todo, bool? value) {
    setState(() {
      todo.done = value ?? false;
    });
  }

  void _deleteTodo(TodoItem todo) {
    setState(() {
      _todos.remove(todo);
    });
  }

  void _clearCompleted() {
    setState(() {
      _todos.removeWhere((todo) => todo.done);
    });
  }

  @override
  Widget build(BuildContext context) {
    final int remainingCount = _todos.length - _completedCount;
    final double progress =
        _todos.isEmpty ? 0 : _completedCount / _todos.length;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 760),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _Header(
                    totalCount: _todos.length,
                    completedCount: _completedCount,
                    remainingCount: remainingCount,
                    progress: progress,
                  ),
                  const SizedBox(height: 18),
                  _AddTodoField(
                    controller: _taskController,
                    onSubmitted: _addTodo,
                  ),
                  const SizedBox(height: 16),
                  _TodoToolbar(
                    selectedFilter: _filter,
                    onFilterChanged: (TodoFilter filter) {
                      setState(() => _filter = filter);
                    },
                    onClearCompleted:
                        _completedCount == 0 ? null : _clearCompleted,
                  ),
                  const SizedBox(height: 14),
                  Expanded(
                    child: _TodoList(
                      todos: _visibleTodos,
                      filter: _filter,
                      onToggle: _toggleTodo,
                      onDelete: _deleteTodo,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.totalCount,
    required this.completedCount,
    required this.remainingCount,
    required this.progress,
  });

  final int totalCount;
  final int completedCount;
  final int remainingCount;
  final double progress;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color(0xFF183A3D),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Today List',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              remainingCount == 0 && totalCount > 0
                  ? 'All tasks are wrapped up.'
                  : '$remainingCount task${remainingCount == 1 ? '' : 's'} left for today',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: const Color(0xFFE6EFEC),
                  ),
            ),
            const SizedBox(height: 18),
            ClipRRect(
              borderRadius: BorderRadius.circular(999),
              child: LinearProgressIndicator(
                minHeight: 10,
                value: progress,
                backgroundColor: Colors.white.withValues(alpha: 0.18),
                valueColor:
                    AlwaysStoppedAnimation<Color>(colors.secondaryContainer),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '$completedCount of $totalCount complete',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: const Color(0xFFD6E6E2),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AddTodoField extends StatelessWidget {
  const _AddTodoField({
    required this.controller,
    required this.onSubmitted,
  });

  final TextEditingController controller;
  final VoidCallback onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            controller: controller,
            textInputAction: TextInputAction.done,
            onSubmitted: (_) => onSubmitted(),
            decoration: const InputDecoration(
              hintText: 'Add a task',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        FilledButton.icon(
          onPressed: onSubmitted,
          icon: const Icon(Icons.add),
          label: const Text('Add'),
          style: FilledButton.styleFrom(
            minimumSize: const Size(96, 56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}

class _TodoToolbar extends StatelessWidget {
  const _TodoToolbar({
    required this.selectedFilter,
    required this.onFilterChanged,
    required this.onClearCompleted,
  });

  final TodoFilter selectedFilter;
  final ValueChanged<TodoFilter> onFilterChanged;
  final VoidCallback? onClearCompleted;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      alignment: WrapAlignment.spaceBetween,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: <Widget>[
        SegmentedButton<TodoFilter>(
          segments: const <ButtonSegment<TodoFilter>>[
            ButtonSegment<TodoFilter>(
              value: TodoFilter.all,
              label: Text('All'),
              icon: Icon(Icons.list_alt),
            ),
            ButtonSegment<TodoFilter>(
              value: TodoFilter.active,
              label: Text('Active'),
              icon: Icon(Icons.radio_button_unchecked),
            ),
            ButtonSegment<TodoFilter>(
              value: TodoFilter.done,
              label: Text('Done'),
              icon: Icon(Icons.task_alt),
            ),
          ],
          selected: <TodoFilter>{selectedFilter},
          onSelectionChanged: (Set<TodoFilter> selected) {
            onFilterChanged(selected.first);
          },
        ),
        TextButton.icon(
          onPressed: onClearCompleted,
          icon: const Icon(Icons.cleaning_services_outlined),
          label: const Text('Clear done'),
        ),
      ],
    );
  }
}

class _TodoList extends StatelessWidget {
  const _TodoList({
    required this.todos,
    required this.filter,
    required this.onToggle,
    required this.onDelete,
  });

  final List<TodoItem> todos;
  final TodoFilter filter;
  final void Function(TodoItem todo, bool? value) onToggle;
  final ValueChanged<TodoItem> onDelete;

  @override
  Widget build(BuildContext context) {
    if (todos.isEmpty) {
      return _EmptyState(filter: filter);
    }

    return ListView.separated(
      itemCount: todos.length,
      separatorBuilder: (_, __) => const SizedBox(height: 10),
      itemBuilder: (BuildContext context, int index) {
        final TodoItem todo = todos[index];
        return _TodoTile(
          todo: todo,
          onToggle: (bool? value) => onToggle(todo, value),
          onDelete: () => onDelete(todo),
        );
      },
    );
  }
}

class _TodoTile extends StatelessWidget {
  const _TodoTile({
    required this.todo,
    required this.onToggle,
    required this.onDelete,
  });

  final TodoItem todo;
  final ValueChanged<bool?> onToggle;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE6DED2)),
      ),
      child: CheckboxListTile(
        value: todo.done,
        onChanged: onToggle,
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(
          todo.title,
          style: TextStyle(
            fontSize: 16,
            decoration: todo.done ? TextDecoration.lineThrough : null,
            color:
                todo.done ? const Color(0xFF7F8986) : const Color(0xFF202927),
          ),
        ),
        secondary: IconButton(
          tooltip: 'Delete task',
          onPressed: onDelete,
          icon: const Icon(Icons.delete_outline),
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({required this.filter});

  final TodoFilter filter;

  @override
  Widget build(BuildContext context) {
    final String message = switch (filter) {
      TodoFilter.active => 'No active tasks.',
      TodoFilter.done => 'No completed tasks yet.',
      TodoFilter.all => 'Add your first task.',
    };

    return Center(
      child: Text(
        message,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: const Color(0xFF596662),
            ),
      ),
    );
  }
}
