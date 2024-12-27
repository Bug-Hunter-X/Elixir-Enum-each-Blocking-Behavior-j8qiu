```elixir
list = [1, 2, 3, 4, 5]

# Solution 1: Using Enum.map and Task.async
Tasks = Enum.map(list, fn x ->
  Task.async(fn ->
    if x == 3 do
      Process.sleep(1000)
    end
    {x, x}
  end)
end)

Enum.each(Task.await_many(Tasks), fn {x, _} -> IO.puts(x) end)

# Solution 2: Using a separate process for each iteration
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  spawn(fn ->
    if x == 3 do
      Process.sleep(1000)
    end
    IO.puts(x)
  end)
end)
```