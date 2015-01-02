; Check if a sequence file exists
; If it exists delete it

IfExist, C:\Project\Sequence.txt
	FileDelete, C:\Project\Sequence.txt

; If there is a parameter aka a sequence given

;Append Indexes
Loop, %0% {
	FileAppend, %A_Index%, C:\Project\Sequence.txt	
	FileAppend, .0`n, C:\Project\Sequence.txt
}

;Append Sequence Numbers
Loop, %0%  ; For each parameter:
{
    param := %A_Index%  ; Fetch the contents of the variable whose name is contained in A_Index.
    FileAppend, %param%`n, C:\Project\Sequence.txt 
}

RunWait, AutoHotkey.exe C:\Project\createPosNegExamples.ahk 

