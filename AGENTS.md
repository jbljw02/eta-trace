# AI Agent Instructions - Eta Trace

Follow these standards when working on this project.

## Core Standards

### 1. Simple Implementation
- Prefer the simplest implementation that meets the current requirements.
- Do not add features, configuration, extension points, or abstractions for hypothetical future requirements (YAGNI).
- Avoid unnecessary classes, layers, and design patterns for small features.

### 2. Separation of Responsibilities and Dependencies
- Give each function and module one clear responsibility that can be understood and changed independently.
- Separate responsibilities with different reasons to change, such as external API calls, data transformation, and database persistence.
- Avoid splitting code merely to increase the number of files.
- Do not depend directly on another module's internal implementation.

### 3. Code That Is Easy to Delete and Replace
- Design features so deleting them or replacing their implementation requires few changes elsewhere.
- Minimize shared state and hidden dependencies between modules.
- Do not create shared modules solely because code looks similar; allow small amounts of duplication when sharing would increase coupling.

### 4. Naming and Style
- Follow PEP 8 by default and maintain consistency with the existing code.
- Use `snake_case` for function, variable, and module names.
- Use `PascalCase` for class names and `UPPER_SNAKE_CASE` for constants.
- Use names that convey purpose and meaning.
- Use verbs describing actions for function names and nouns describing their subjects for variable names.
- Use four spaces for indentation.
- Give meaningful names to numbers and strings whose meaning is otherwise unclear.

### 5. Logic and Control Flow
- Use early returns to reduce unnecessary nesting.
- Make function inputs, return values, and side effects explicit.
- Check for `None` using `is None` or `is not None`.
- Write explicit conditions when empty values and `None` must be distinguished.
- Do not make API calls, connect to databases, or perform similar operations at import time.
- Do not use mutable objects as default function arguments.

### 6. Types and Exception Handling
- Add type hints to function parameters and return values.
- Rely on type inference for local variables whose types are clear.
- Catch specific exceptions that can be handled.
- Do not suppress exceptions or disguise failures as successful results.
- Preserve enough information to identify the cause when handling errors.

### 7. Paths and Dependencies
- Prefer `pathlib` for file path handling.
- Do not modify `sys.path` to resolve import issues.
- Declare directly used third-party libraries in `pyproject.toml`.
- Explain why a new dependency is needed when adding it.

## Validation Standards

- Perform validation appropriate to the changed behavior.
- Test observable results rather than internal implementation details.

## Configuration and Credential Standards

- Do not include real API keys or passwords in code or example environment variable files.
- Read credentials from environment variables.
- Do not add files containing real credentials to Git.
- Do not expose credentials in logs or error messages.

## Documentation Standards

- Write instructions and procedures in the imperative mood.
- Write comments that explain intent and reasoning rather than restating what the code does.
- Keep execution instructions and feature descriptions aligned with the current state of the project.

## Work Plans

- Follow `docs/plan/PLAN.md` when creating work plans.
- Before starting or resuming planned work, read the relevant plan and follow its execution, review, and progress tracking rules.
