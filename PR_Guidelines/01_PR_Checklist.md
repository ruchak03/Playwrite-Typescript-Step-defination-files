# Pull Request (PR) Checklist

Before raising any Pull Request, ensure that all the following checks are completed.

## 1. Code Quality

- [ ] No commented-out code.
- [ ] No unnecessary `console.log()` statements.
- [ ] No hardcoded waits (`waitForTimeout`).
- [ ] No duplicate code.
- [ ] Proper naming conventions are followed.

## 2. Testing

- [ ] All tests pass locally.
- [ ] Existing tests are not broken.
- [ ] All test cases are executed successfully.

## 3. Code Validation

- [ ] Linting passes without errors.
- [ ] Project build completes successfully.
- [ ] No compilation errors.

## 4. Playwright & BDD Best Practices

- [ ] Feature files are readable.
- [ ] Step definitions are clean and readable.
- [ ] Step definitions are reusable.
- [ ] Page Objects are reusable.
- [ ] No unnecessary code duplication.

## 5. Pull Request Preparation

- [ ] PR description clearly explains the changes.
- [ ] PR contains only relevant changes.
- [ ] Small PRs are preferred over huge PRs.
- [ ] Code changes are reviewed before raising the PR.

---

## Strict PR Review Prompt

Use the following prompt to review your code before raising a PR:

**Prompt:**

Pretend you are the most strict reviewer in my team.

Review this PR and generate all review comments that could be added.

Do not be polite.

Find every issue that could prevent approval or merge.

Suggest exact fixes.

---

**Objective:** Ensure code quality, test stability, readability, and maintainability before raising a Pull Request.
