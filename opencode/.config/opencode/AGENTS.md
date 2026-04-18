## Architecture Principles to follow

- Keep It Simple, Stupid (KISS): Avoid unnecessary complexity in design and
  implementation.
- You Ain’t Gonna Need It (YAGNI): Do not add functionality until it is
  demonstrably necessary.
- Don’t Repeat Yourself (DRY): Every piece of knowledge must have a single,
  unambiguous representation.
- Separation of Concerns (SoC): Divide the system into distinct sections with
  minimal overlap in functionality.
- Minimize Cognitive Load: Design systems that are as easy as possible to
  understand and reason about.
- High Cohesion, Low Coupling: Keep related code together and reduce
  dependencies between modules.
- Functional Core, Imperative Shell: Isolate side-effects to the outermost
  layers of the application.
- Vertical Slice Architecture: Structure code around business capabilities or
  features, not technical layers.
- SOLID Principles: A set of five fundamental principles for object-oriented
  design.
- Single Responsibility Principle (SRP): A class or module should have one, and
  only one, reason to change.
- Law of Demeter (Principle of Least Knowledge): A module should not know about
  the internal details of the objects it manipulates.
- Tell, Don’t Ask: An object should command another object to perform an action,
  rather than asking for its state.
- Make Illegal States Irrepresentable: Use the type system to ensure that
  invalid data cannot exist.
- Parse, Don’t Validate: Transform un-trusted input into a validated domain
  model at the system boundary.
- Correctness by Construction: Design components so they can only be created in
  a valid state.
- Prefer Compile-Time Errors over Runtime Errors: Maximize the number of errors
  that can be caught by the compiler.
- Favor Immutability: Prefer data structures that cannot be modified after they
  are created.
- Design by Contract: Be explicit about the preconditions, postconditions, and
  invariants of components.
- Design for Testability: Structure the system to allow for easy and effective
  unit and integration testing.
