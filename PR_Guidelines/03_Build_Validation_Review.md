# Build Validation & Strict PR Review

## 1. Branch Build Analysis

Review my current branch and determine whether the project will build successfully.

### Analyse the following:

- Changed files
- Impacted dependencies
- Build scripts
- Unit tests
- Integration tests
- Configuration files

### Requirements:

- Predict possible build failure points.
- Provide a PASS/FAIL assessment with reasons.
- If there are any risks, explain exactly what needs to be fixed before the build is executed.

## 2. Senior Code Review

Act as a Senior Code Reviewer.

Analyse all modified files in the current branch and identify anything that could cause:

- Build failures
- Test failures
- PR review comments

### Expected Actions:

- Suggest corrections for identified issues.
- Provide a final list of files that need to be updated.

## 3. Strict PR Review

Pretend you are the most strict reviewer in my team.

- Review this PR.
- Generate all possible review comments.
- Find every issue that could prevent approval or merging.
- Suggest exact fixes.
- Be direct and critical.

## Expected Review Output

1. Build validation result (PASS/FAIL).
2. Potential build failure points.
3. Test failure risks.
4. Critical code review comments.
5. Exact suggested corrections.
6. Final list of files requiring updates.
7. PR approval blockers.

---

**Objective:** Identify build issues, test failures, and code quality problems before raising a Pull Request.
