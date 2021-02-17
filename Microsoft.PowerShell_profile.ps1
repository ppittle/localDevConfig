# Ensure that Get-ChildItemColor is loaded
Import-Module Get-ChildItemColor

# Set l and ls alias to use the new Get-ChildItemColor cmdlets
Set-Alias ls Get-ChildItemColor -Option AllScope
Set-Alias l Get-ChildItemColorFormatWide -Option AllScope

# Start SshAgent if not already  (NOTE: Not sure if compatible with putty)
# Need this if you are using github as your remote git repository
#if (! (ps | ? { $_.Name -eq 'ssh-agent'})) {
#    Start-SshAgent
#}

# Ensure posh-git is loaded
Import-Module -Name posh-git

# Ensure oh-my-posh is loaded
Import-Module -Name oh-my-posh
#Set-PoshPrompt -Theme paradox
#Set-PoshPrompt -Theme powerlevel10k_classic
Set-PoshPrompt -Theme ~\.my_posh_theme_pure.json

# Confgirue PSReadLine Colors
# https://docs.microsoft.com/en-us/powershell/module/psreadline/set-psreadlineoption?view=powershell-7.1
Set-PSReadLineOption -Colors @{ "Parameter"="`e[32m" }
Set-PSReadLineOption -Colors @{ "Operator"="`e[32m" }

# Disable bell
Set-PSReadLineOption -BellStyle Visual

# Confgirue PSReadLine Suggestions
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
#https://devblogs.microsoft.com/powershell/announcing-psreadline-2-1-with-predictive-intellisense/
#Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView


#https://gist.github.com/bgelens/440c21ced26a42a7cbd7a147a006b13c
#Set-PSReadLineOption -EditMode Emacs -BellStyle None -ExtraPromptLineCount 1 -PredictionSource History -Colors @{
#    Selection = "`e[93m"
#  }
#Set-PSReadLineKeyHandler -Chord Tab -Function MenuComplete
#Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
#Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
#Set-PSReadLineKeyHandler -Key 'Ctrl+f' -Function ForwardWord
#Set-PSReadLineKeyHandler -Key 'Ctrl+z' -Function Undo
#Set-PSReadLineOption -HistorySearchCursorMovesToEnd

#Start AWS
#Import-Module AWSPowerShell.NetCore
