## User setup (IMPORTANT):

```bash
git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"
```
Check:

```bash
git config --list
```
---
# 📁 3. New Project Start (Local Git)
## Step 1: Folder banao

```bash
cd myproject

## Step 2: Git init karo

```bash
git init
```

👉 Isse hidden `.git` folder ban jata hai
---

## 📍 Step 1: Files check

```bash
git status
```
---
## 📍 Step 2: Add files (staging area)

Single file:

```bash
git add index.html
```

All files:

```bash
git add .
```

---

## 📍 Step 3: Commit (save snapshot)

```bash
git commit -m "first commit"
```
👉 Commit = save point or check point
---

## 📍 Step 4: History check

```bash
git log
```

Short version:

```bash
git log --oneline
```

---

# 🌐 5. GitHub connect (MOST IMPORTANT)

## Step 1: GitHub repo banao

* github.com → New repository

---

## Step 2: Remote add karo mtlab jis repo me files save krni hai us repo ka url

```bash
git remote add origin https://github.com/username/repo.git
```

Check:

```bash
git remote -v
```

---

## Step 3: Push code (upload)

First time:

```bash
git push -u origin main
```

Normal push:

```bash
git push
```
---

# 🔄 6. Clone project (download from GitHub)

```bash
git clone https://github.com/username/repo.git
```
---

# 🌿 7. Branching (IMPORTANT for real projects)

## New branch banao:

```bash
git branch feature
```

## Branch switch:

```bash
git switch feature
```
---

## Branch list:

```bash
git branch
```
---

## Merge branch:

```bash
git switch main
git merge feature
```
---

# 🔥 8. Real workflow (yaad rakhna)

Har project me ye flow hota hai:

```bash
git add .
git commit -m "update message"
git push
```

---

# 🧹 9. Undo / Fix mistakes

## Last commit undo (safe)

```bash
git reset --soft HEAD~1
```

## Remove from staging:

```bash
git reset
```

## Discard changes:

```bash
git checkout -- file.txt
```

---

# 📦 10. Important commands summary

| Task          | Command               |
| ------------- | --------------------- |
| Init repo     | git init              |
| Status check  | git status            |
| Add file      | git add .             |
| Commit        | git commit -m "msg"   |
| Push          | git push              |
| Pull          | git pull              |
| Clone         | git clone URL         |
| Branch        | git branch            |
| Switch branch | git switch            |
| Merge         | git merge             |

---
