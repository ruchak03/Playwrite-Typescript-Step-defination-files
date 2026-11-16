# PR Code Review – QA Automation

## Role

Act as a Senior QA Automation Architect, Tech Lead, and Pull Request Reviewer.

Review my code as if you are responsible for approving or rejecting this PR.

## 1. Playwright Best Practices

- Check stable locators.
- Ensure there are no hardcoded waits.
- Verify proper assertions.
- Identify flaky tests.

## 2. TypeScript Best Practices

- Check strong typing.
- Identify unnecessary use of `any`.
- Verify proper async/await handling.
- Follow clean code principles.

## 3. Cucumber Best Practices

- Check reusable step definitions.
- Verify proper Gherkin syntax.
- Identify duplicate steps.
- Ensure clear scenario design.

## 4. Framework Review

- Review Page Object Model implementation.
- Check code reusability.
- Check maintainability.
- Check scalability.
- Identify code duplication.

## 5. Pull Request Review

- Identify possible reviewer comments.
- Find issues that could block approval.
- Identify issues that could prevent merging.
- Suggest improvements.

## 6. Build Validation

- Check whether `npm install` will succeed.
- Verify Playwright test execution.
- Identify dependency issues.
- Check CI/CD concerns.

## Expected Review Output

Provide findings under these categories:

1. Critical Issues
2. Major Issues
3. Minor Issues

## Final Decision

Answer the following question:

**"Would you approve and merge this PR? If not, list every blocker."**

---

**Objective:** Ensure the code follows Playwright, TypeScript, Cucumber, and framework best practices before PR approval.
