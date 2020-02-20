spf () { du -a ~/Projects | grep -viE '.git|node_modules|deploy|dist|.env|vendor|.DS_Store' | awk '{print $2}' | fzf | xargs $EDITOR }
vii () { du -a . | grep -viE '.git|node_modules|deploy|dist|.env|vendor|.DS_Store|plugged' | awk '{print $2}' | fzf | xargs $EDITOR }
