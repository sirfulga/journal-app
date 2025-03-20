# Journal App: Product Specification

**Version:** 1.0.0  
**Last Updated:** [Current Date]  
**Status:** Draft

## Executive Summary

The Journal App is a privacy-first journaling solution that enhances the traditional journaling experience with AI-powered organization and assistance. It enables users to document their thoughts, goals, and activities while leveraging on-device AI to improve writing quality, identify key elements, and organize content intelligently.

Core value propositions:
- **Enhanced Self-reflection**: AI-powered tools that respect the user's authentic voice
- **Privacy-focused**: On-device processing using TensorFlow Lite to maintain data privacy
- **Intelligent Organization**: Automatic identification of thoughts, goals, and objectives
- **Seamless Experience**: Multiple input methods including text and voice
- **Actionable Insights**: Future premium features offering goal analysis and task suggestions

This document details the comprehensive product requirements, user journeys, technical implementations, and feature specifications necessary to deliver this vision.

---

## Document Map

This specification is part of a cohesive documentation suite:

| Document | Purpose | When to Access |
|----------|---------|----------------|
| [purpose.md](./purpose.md) | Defines the "Why" - The core purpose, approach, and value proposition | For understanding the foundational vision and goals |
| [product_specification.md](./product_specification.md) (this document) | Details the "What" - Comprehensive feature requirements and specifications | For specific implementation details and product features |
| [context.md](./context.md) | Explains the "How" - Technical context, constraints, and implementation considerations | For understanding technical decisions and project structure |
| [action_plan.md](./action_plan.md) | Outlines the "When" - Development roadmap with version milestones | For tracking development progress and priorities |

---

## 1. Project Description

### Objective

A privacy-first journaling app that combines daily reflection with AI-driven organization, helping users track their days, thoughts, and goals seamlessly.

The app leverages TensorFlow Lite for on-device natural language processing, ensuring user data remains private while providing intelligent assistance.

### Core Features

Features are prioritized across development versions (see [action_plan.md](./action_plan.md) for timeline):

#### Version 0.1 (Minimum Testable Product)
- **Daily Logs**: Rich text/audio entries with basic formatting
- **AI Formatting**: Grammar corrections, pagination, and text improvements
- **Simple Dashboard**: Basic journal entry management

#### Version 0.2 (Complete Structure)
- **Calendar Integration**: View entries by date
- **Full Navigation**: Complete app structure and screen flow
- **Basic AI Categorization**: Initial implementation of thoughts/goals detection

#### Version 1.0 (Public Release)
- **Enhanced AI Categorization**: Improved detection of goals, tasks, and thoughts in real-time
- **Goal Management**: Organize and track personal goals
- **Cross-Platform**: iOS, Android, and web (React Native + Expo)
- **Security**: On-device processing for sensitive data, end-to-end encryption, and GDPR compliance

#### Version 2.0 (Premium Features)
- **Advanced Goal Analysis**: Break down goals into actionable steps (may require cloud AI)
- **Insights Dashboard**: Patterns and trends in journaling habits
- **Enhanced Collaboration**: Optional sharing features (if desired)

### Target Users

- Individuals seeking structured self-reflection
- Productivity enthusiasts who want to turn ideas into actionable plans
- Privacy-conscious users wary of cloud-based journaling apps
- People who struggle with organizing their thoughts and goals

---

## 2. Key Flow

### User Journey

#### Login/Signup

- Authenticate via Google, GitHub, or email
- Set up biometric/PIN lock for app access

#### Dashboard (Home)

- **Recent Logs**: Scrollable list of last 3 entries (date, preview snippet)
- **Top Goals**: 2-3 high-priority goals with progress bars

#### Navigation

- **Calendar Icon**: Switch to calendar view (dots mark logged days)
- **+ Button**: Open entry creation menu
- **Profile Icon**: Access settings/Pro upgrades

#### Create Entry

- **Input**: Write text (rich editor) or record audio (auto-transcribed)
- **AI Assistance**:
  - Grammar corrections (blue underlines)
  - Real-time highlights for goals (orange), tasks (purple), thoughts (green)
- **Save & Review**:
  - Popup shows detected categories (e.g., "Learn Python" → Goal)
  - Approve/reject labels or add custom tags

#### Calendar View

- Monthly grid with color-coded dots for logged days
- Tap a date to view/edit past logs or create new ones

#### Goals Management

- **List View**: Goals sorted by urgency/importance (dropdown filters)
- **Goal Details**:
  - Edit title/description
  - Tap "AI Breakdown" to generate steps (premium feature)
  - Assign deadlines and track progress

#### Profile & Settings

- Upgrade to Pro (removes watermarks, unlocks advanced AI)
- Toggle themes, enable sync, or export data (JSON/PDF)

### User Flow Diagram

[Flow diagram placeholder - to be added with screenshots]

---

## 3. Technical Implementation

### Technology Stack

| Category | Tools/Technologies | Rationale |
|----------|-------------------|-----------|
| **Frontend** | React Native, Expo | Cross-platform development with native performance |
| **AI** | TensorFlow Lite | On-device processing for privacy and offline functionality |
| **Database** | Local storage with encryption | Privacy-first approach with secure data storage |
| **State Management** | Context API or lightweight alternative | Appropriate for app complexity |
| **UI Components** | Custom components with consistent design system | Tailored user experience |

### On-Device AI Processing

TensorFlow Lite will be used for core AI features (see [context.md](./context.md) for details):
- Grammar and punctuation correction
- Text formatting assistance
- Identification of thoughts, goals, objectives, and tasks

This approach ensures:
- User privacy through on-device processing
- Offline functionality
- Reduced cloud processing costs

Premium features requiring more advanced language models may leverage cloud processing with clear user consent.

### Multi-Language Consideration

- Initial development will focus on a single language (English)
- Multi-language support will be evaluated based on TensorFlow Lite capabilities
- See [context.md](./context.md) for detailed multi-language implementation plans

---

## Core Functionalities

### Authentication  

#### Login/Signup Flow  

- Authentication module with multiple providers
- OAuth options: Google, GitHub, Email 
- Post-login biometric/PIN setup screen

### Dashboard Interface  

#### Layout Components  

- Header section with greeting and date  
- Recent entries panel (last 3 logs)  
- Top objectives panel (2 highest priority)  
- Bottom navigation bar:  
  - Left: Calendar icon  
  - Center: Add Entry button  
  - Right: Profile icon  
- Top navigation bar:  
  - Left: Hamburger menu  
  - Right: Search icon  
  - Right: Sort dropdown  

### Navigation Drawer  

#### Menu Structure  

1. Upgrade to Pro  
2. Theme Settings  
3. To-Do List  
4. Objectives & Goals  
5. Thoughts Board  
6. Diary Lock  
7. Export/Import  
8. App Settings  

### Calendar System  

#### Key Features  

- Month-grid view with date cells  
- Visual indicators:  
  - Current date: blue border  
  - Logged dates: gray dot  
- Long-press interaction for historical entries  
- Sync status indicator (if applicable)  

### Entry Creation Workflow  

#### Input Methods  

- Text input:  
  - Rich text editor (bold/italic/bullets)  
  - Character counter (max 2000)  
- Voice input:  
  - Recording with reasonable time limit
  - Auto-transcription functionality

#### AI Processing  

- Real-time grammar checks (blue underline)  
- Entity detection:  
  - Objectives: orange highlight  
  - Goals: green highlight  
  - Actions: purple highlight  
- Post-save categorization dialog  

### Objectives Hierarchy  

#### Structure Definition  

1. Objective (Strategic Vision)  
   - Attributes: Title, Vision Level, Progress  
2. Goal (SMART Target)  
   - Attributes: Deadline, Priority, Linked Objective  
3. Action (Concrete Task)  
   - Attributes: Assignee, Status, Due Date  

#### AI Integration  

- Objective detection from journal entries  
- Goal breakdown feature (premium)
- Action item suggestions based on goal context  

### To-Do Management  

#### Task Sources  

- Auto-generated from AI-detected actions  
- Manually created standalone tasks  
- Optional calendar integration

#### UI Components  

- Checkbox list with priority labels  
- Due date indicators (red for overdue)  
- Filter options: Today/Week/Month  

### Data Management  

#### Export/Import System  

- Supported formats: JSON, PDF  
- Encryption for sensitive data
- Optional cloud sync with privacy controls

### Security Implementation  

#### Key Components  

- Local data encryption
- Network encryption (for any cloud features)
- Biometric lock settings:  
  - Immediate lock  
  - 1-minute delay  
  - 5-minute delay  

### Search Functionality  

#### Capabilities  

- Full-text search across journal entries
- Advanced filters:  
  - Date range picker  
  - Tag-based filtering  

### Settings Configuration  

#### Available Options  

- Appearance:  
  - Light/Dark theme  
  - Font size adjustment  
- Notifications:  
  - Daily reminder toggle  
  - Goal deadline alerts  
- Data:  
  - Auto-delete after X days  
  - Backup frequency  

### Compliance Features  

#### GDPR Requirements  

- Data deletion tool  
- Export all data function  
- Consent management interface  

---

## Development Roadmap

See [action_plan.md](./action_plan.md) for the detailed development timeline, but key milestones include:

### Version 0.1 - Minimum Testable Product
- Basic journaling functionality
- Core TensorFlow Lite integration
- Simple dashboard and entry creation

### Version 0.2 - Complete Structure
- All screens implemented
- Full navigation structure
- Basic AI features operational

### Version 1.0 - Public Release
- Refined UI/UX
- Complete feature set
- Polished user experience

### Version 2.0 - Premium Features
- Advanced AI capabilities
- Enhanced analytics
- Premium subscription model

---

## Appendices

### Design References

Design screenshots will be added to guide the structural implementation of the app. These will focus on:
- Screen layouts and component positioning
- Navigation flows between screens
- User interaction patterns

[Screenshots placeholder - to be added]

### Related Documentation

- See [purpose.md](./purpose.md) for the foundational vision
- See [context.md](./context.md) for technical implementation details
- See [action_plan.md](./action_plan.md) for development milestones and tasks
