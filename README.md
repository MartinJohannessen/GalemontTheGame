## Git Protocol for Small Teams

### Setup:

1. **Repository**: Initialize a Git repository if you haven't already.
2. **main Branch**: This is the default branch, where the production-ready code lives. Only merge code into this branch when it's tested and reviewed.

### Workflow:

#### 1. **Sync with Remote**:
Before starting any new work, ensure you're synced up with the latest changes.

```
git checkout main
git pull origin main
```

#### 2. **Create a Feature Branch**:
When starting work on a new feature or fix, branch off from `main`.

```
git checkout -b feature/your-feature-name
```

Name the feature branch descriptively, so that others can get a sense of what's being worked on from the branch name.

#### 3. **Regular Commits**:
Commit your changes locally as you make progress. Make sure to commit atomic changes that revolve around a specific task or update.

```
git add -p
git commit -m "Descriptive message about changes"
```

#### 4. **Sync with main**:
Before syncing with `main`, it's advisable to create a backup of your branch:

```
git branch backup/your-feature-name
```

Regularly sync your feature branch with `main` to ensure you're working with the latest code and to minimize merge conflicts later.

```
git fetch origin
git rebase origin/main
```

If you're unfamiliar with rebasing or find it tricky, consider merging `main` into your branch instead. If you encounter merge conflicts during the rebase, resolve them before continuing.

#### 5. **Push Feature Branch**:
Once your feature is complete, or you want to backup/share your progress:

```
git push origin feature/your-feature-name
```

If you've rebased your branch after pushing changes to it before, you might need to force push. Use caution with this command:

```
git push origin feature/your-feature-name --force-with-lease
```

#### 6. **Pull Request (PR) / Merge Request (MR)**:
Using your repository's platform (like GitHub, GitLab, etc.), create a PR/MR from your feature branch to `main`.

- Assign team members for review.
- Ensure any Continuous Integration (CI) checks pass.
- Address any feedback or changes requested by reviewers.

#### 7. **Merging**:
Once the PR/MR is approved:

- Merge the PR/MR into `main`.
- Delete the feature branch both locally and on the remote:

  ```
  git branch -d feature/your-feature-name
  git push origin --delete feature/your-feature-name
  ```

### Best Practices:

1. **Commit Messages**: Write clear, concise commit messages. This helps in understanding the history and purpose of changes.
2. **Atomic Commits**: Ensure each commit focuses on a specific task or change. This makes reverts and cherry-picks more straightforward.
3. **Selective Staging**: Instead of staging all changes, use `git add -p` to selectively stage your modifications. This encourages awareness of what's being committed.
4. **Small, Focused Commits**: Make smaller, focused commits instead of large, mixed ones. This makes it easier to review changes and pinpoint issues.
5. **Keep Feature Branches Short-lived**: Aim to merge feature branches quickly to reduce the chance of complicated merge conflicts.
6. **Communicate**: If you're unsure about something or need help with merge conflicts, communicate with your team.

