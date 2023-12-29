function reload {
	# PowerShell lacks a proper way to reload the console.
	# So, I'll have to just spawn some child processes whenever
	# I want to "reload" the console, and all of them will be
	# killed once I kill the parent process or the window it
	# belongs to.
	Clear-Host
	pwsh
	exit
}

function Set-WindowTitle {
	$hostversion="$($Host.Version.Major)`.$($Host.Version.Minor)"
	$Host.UI.RawUI.WindowTitle = "$(whoami) on PowerShell $hostversion"
}

function Prompt {
	Write-Host "[" -ForegroundColor Blue -NoNewLine
	Write-Host $(whoami) -ForegroundColor Magenta -NoNewLine
	Write-Host " " -NoNewLine
	Write-Host $pwd -ForegroundColor Cyan -NoNewLine
	Write-Host "]" -ForegroundColor Blue -NoNewLine
	Write-Host " " -NoNewLine
	Write-Host "🧲" -NoNewLine
	return " "
}

Set-WindowTitle
