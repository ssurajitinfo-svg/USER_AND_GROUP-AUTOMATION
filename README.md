# 👤 User & Group Automation Script

## 📌 Project Overview

This project is a **Bash automation script** designed to simplify user and group management in Linux systems. It reads user and group details from an input file and automatically creates users, assigns groups, sets passwords, and enforces password policies.

---

## 🚀 Features

* ✅ Create groups automatically (if not exists)
* ✅ Create users with home directories
* ✅ Assign users to specific groups
* ✅ Set default password for users
* ✅ Force password change on first login
* ✅ Avoid duplicate user/group creation

---

## 📂 Project Structure

```
.
├── user_group.sh     # Main automation script
├── users.txt         # Input file (user:group format)
└── README.md         # Project documentation
```

---

## 📝 Input File Format

Create a file named `users.txt`:

```
user1:group1
user2:group2
user3:group1
```

👉 Format:

```
username:groupname
```

---

## ⚙️ How It Works

The script:

1. Reads each line from `users.txt`
2. Splits username and group using `:`
3. Checks if group exists → creates if not
4. Checks if user exists → creates if not
5. Assigns group to user
6. Sets default password
7. Forces password reset on first login

---

## ▶️ Usage

### Step 1: Give execute permission

```bash
chmod +x user_group.sh
```

### Step 2: Run the script

```bash
sudo ./user_group.sh
```

---

## 🔐 Default Credentials

* Default password: `Password123`
* Users will be forced to change password on first login

---

## 📸 Sample Output

```
Creating group: group1
Creating user: user1
Creating user: user2
User user3 already exists
```

---

## 🧠 Concepts Used

* Bash scripting
* File handling (`while read`)
* User management (`useradd`, `passwd`)
* Group management (`groupadd`)
* Conditional statements
* Input Field Separator (IFS)

---

## 🔥 Future Improvements

* Add logging system
* Support CSV input (username, group, password)
* Add user deletion feature
* Menu-driven interface
* Input validation & error handling

---

## 💼 Use Case

This script is useful for:

* System administrators
* DevOps beginners
* RHCSA practice projects
* Automating repetitive Linux tasks

---

## 📜 License

This project is open-source and free to use.

---

## 🙌 Author

Surajit Pramanik

---

