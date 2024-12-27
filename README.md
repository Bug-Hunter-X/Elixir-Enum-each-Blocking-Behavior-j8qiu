# Elixir Enum.each Blocking Example

This example demonstrates a potential issue when using `Enum.each` in Elixir with long-running operations.  Because Elixir's `Enum.each` doesn't inherently handle concurrency well, a long-running operation within the `each` function can block subsequent iterations. This is particularly noticeable in the absence of multiple processes or other forms of parallelism.

The `bug.exs` file shows the problem where pausing for 1 second during processing prevents immediate output of the following numbers.

The `bugSolution.exs` file presents several alternative approaches to overcome this, showcasing Elixir's strengths in concurrency.