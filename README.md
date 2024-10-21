# To-Do List App

## Overview

This is a full-stack To-Do List application built using **Xcode**. It provides users with an intuitive interface to manage their tasks and deadlines, making it easy to track progress and stay organized. The app leverages **Firestore** as its back-end database, ensuring seamless storage and retrieval of user data.

## Features

- **User Authentication:** Secure login and account management functionality, allowing users to create an account and save their personalized to-do lists.
- **Task Management:** Users can create, update, and delete tasks. Each task includes:
  - Title
  - Due date
  - Completion status
- **Subsets of Data:** 
  - Track the date the user joined.
  - Sort tasks by due date and completion status.
  - Mark tasks as completed or pending.
- **Real-Time Updates:** Data is stored in **Firestore**, ensuring that user data is updated in real time across sessions.
- **Persistent Storage:** Tasks, due dates, and user details are saved to Firestore and can be accessed from any device.

## Tech Stack

- **Frontend:** Xcode (Swift)
- **Backend:** Firestore (NoSQL Database)
- **Authentication:** Firestore’s built-in user authentication system

## Future Enhancements
- Add task prioritization (high, medium, low) for better task management.
- Implement reminders and notifications for due dates.
- Include task categorization or tags for better organization.
- Explore cross-platform compatibility using SwiftUI.

