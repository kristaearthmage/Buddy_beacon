# AI Integration

## Primary Engine:
- **Gemma 3n (Google)**: Local or private inference model. Handles all generative text including tasks, mood replies, chaos logic.

## On-Device Companion:
- **Apple CoreML (iOS 26+)**: Routes mood/state/context from:
  - Biometrics
  - Journals
  - Calendar energy mapping

## Flow:
1. CoreML detects mood/state changes
2. System filters or adjusts task output conditions
3. Gemma 3n generates task narrative, challenge format
4. SwiftUI displays the quest

AI prompts are loaded from `.prompt` files and passed contextually with memory-aware shaping.
