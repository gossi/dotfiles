---
description: Extracts and writes ADRs
agent: build
---

1. Call the /adr-decision-extraction skill
2. Then take that json output and ask the user, which decisions they want to write (multiselect)
3. Then call the /adr-writing skill with the user's choice
