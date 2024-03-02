# Let's talk about recursion

- Recursion is a method where the solution to a problem depends on solutions to smaller instances of the same problem.
- Some mathematical samples are intriscly recursive: Fact(n) = n * Fact(n - 1), Fact(1) = 1
- Structure of Recursive Functions
    Base Case: A condition that stops the recursion, preventing infinite loops.
    Recursive Step: A part of the function that calls itself with a simpler or smaller argument.
- The Rationale Behind Using Recursion
    Ideal for Complex Problems: "Simplifies coding complex problems like tree traversals."
    Aligns with Functional Programming: "Recursion is a natural fit for Elixir's functional programming style."
- Benefits
    Simplicity: Recursion can turn complex algorithms into clearer, more manageable code (tree traversals)
    Readability and Maintainability: Recursive solutions can be more intuitive and easier to follow (declarative vs imperative)
    Reducing State Management Complexity: Iteration often requires manual tracking of state, which recursion handles naturally.
    Recursion complements the stateless and immutable nature of functional programming
    TCO allows recursion to be as memory efficient as iteration
- Pitfalls
    Stack overflow
    Performance (memory consumption)
    Debugging
- Conceptual differences with iterations:
    Recursion: "Focuses on breaking down a problem into simpler instances of itself."
    Iteration: "Relies on a loop construct to repeat an operation until a condition is met."
- Advanced cases
  Mutual recursion: is_even/1 is_odd/1
  Accumulative Recursion (TOC Factorial)


- TOC
```
defmodule Factorial do
  def calculate(n), do: factorial_acc(n, 1)

  defp factorial_acc(0, acc), do: acc
  defp factorial_acc(n, acc) when n > 0, do: factorial_acc(n - 1, n * acc)
end
```

```
defmodule Factorial do
  def calculate(0), do: 1
  def calculate(n) when n > 0, do: n * calculate(n - 1)
end
```

## Esempi
- size
- sum
- first
- last
- member?
- remove_first
- remove_all
- replace
- map
- reduce
- max (using reduce)
- all? (using reduce)
- reverse
- zip

Lodash
- index_of
- filter
- sort_by
- find


- value (operazioni matematiche)
- Maze example
- Sorting
- Tree traversing
- Split (even and odd)
