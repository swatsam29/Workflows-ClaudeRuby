# Workflows-ClaudeRuby

## SDLC Interview Map (`devbench/index.html`)

A single-file, interactive interview-prep page. Open it in any browser; there is no build step.

- **SDLC map**: a flow diagram of the software lifecycle (delivery pipeline, runtime request flow, operations). It covers about 70 tools across 12 stages: planning, code review, testing, CI/CD, infrastructure, frontend, networking, backend, databases, messaging, monitoring/observability and security.
- **Tool details**: click any tool to see what it is, where it fits, a checklist of topics to study and common interview questions. Progress is saved in your browser's localStorage.
- **Quiz me**: shows a random interview question, then reveals which tool it belongs to.
- **Practice tools**: regex tester, JSON explorer, text diff, JWT decoder, encode & hash, timestamp converter, cron explainer and a task board. Study topics link to these where they apply.
- **Shortcuts**: `Ctrl/Cmd + K` opens the command palette, `1`–`9` switch sections and `Esc` closes panels.

To add or edit tools, change the `window.ATLAS` array in the page. Each tool is one row: `[id, name, description, "topic|topic", "question|question", "practice-tool-ids"]`.
