package com.musthafa.springboot.firstspringbootwebapp.services;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.musthafa.springboot.firstspringbootwebapp.models.Todo;

@Service
public class TodoService {
	private static List<Todo> todos = new ArrayList<Todo>();
	private static int todoCount = 3;

	static {
		todos.add(new Todo(1, "Musthafa", "Learn Spring MVC", new Date(), false));
		todos.add(new Todo(2, "Musthafa", "Learn Struts", new Date(), false));
		todos.add(new Todo(3, "Sravan", "Learn Hibernate", new Date(), false));
	}

	public List<Todo> retrieveTodos(String user) {
		return todos.stream().filter(todo -> todo.getUser().equals(user)).collect(Collectors.toList());
	}

	public void addTodo(String name, String desc, Date targetDate, boolean isDone) {
		todos.add(new Todo(++todoCount, name, desc, targetDate, isDone));
	}

	public void deleteTodo(int id) {
		Iterator<Todo> iterator = todos.iterator();
		while (iterator.hasNext()) {
			Todo todo = iterator.next();
			if (todo.getId() == id) {
				iterator.remove();
			}
		}
	}

	public Todo retrieveTodo(int id) {
		for (Todo todo : todos) {
			if (todo.getId() == id) {
				return todo;
			}
		}
		return null;
	}

	public void updateTodo(Todo todo) {
		Iterator<Todo> iterator = todos.iterator();
		while (iterator.hasNext()) {
			Todo t = iterator.next();
			if (t.getId() == todo.getId()) {
				iterator.remove();
			}
		}
		todos.add(todo);
	}
}
