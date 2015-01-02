; Write to the array: Read from file (maybe create file from some input)
ArrayCount = 0
Loop, Read, C:\Project\Sequence.txt   ; This loop retrieves each line from the file, one at a time.
{
    ArrayCount += 1  ; Keep track of how many items are in the array.
    Array%ArrayCount% := A_LoopReadLine  ; Store this line in the next array element.
}


IfExist, C:\Project\sequenceSolver.f
	FileDelete, C:\Project\sequenceSolver.f


IfExist, C:\Project\sequenceSolver.n
	FileDelete, C:\Project\sequenceSolver.n

numberOfSequencesToBeCreated := ArrayCount // 4


; Create Pos and Neg Examples
; Read from the array:




Loop %numberOfSequencesToBeCreated% {
    index = %A_Index%
    index := index -1
    FileAppend, findPattern(, C:\Project\sequenceSolver.f
    FileAppend, findPattern(, C:\Project\sequenceSolver.n
    Loop %numberOfSequencesToBeCreated% {
        ; The following line uses the := operator to retrieve an array element:
        
        loopIndex = %A_Index%
        
        indexForSeqIndex := loopIndex + index
        indexForSeqNumber := indexForSeqIndex + ArrayCount // 2 
    	

        if(loopIndex == numberOfSequencesToBeCreated) {
            FileAppend, % Array%indexForSeqIndex% . ",", C:\Project\sequenceSolver.f
            FileAppend, % Array%indexForSeqNumber%, C:\Project\sequenceSolver.f
            
            if(mod(indexForSeqNumber,2) == 0) {
                newElement = % Array%indexForSeqNumber% + 1
            }
            else {
                newElement = % Array%indexForSeqNumber% - 1
            }

            FileAppend, % Array%indexForSeqIndex% . ",", C:\Project\sequenceSolver.n
            FileAppend, % newElement, C:\Project\sequenceSolver.n


        }
        else {

            FileAppend, % Array%indexForSeqIndex% . ",", C:\Project\sequenceSolver.f
            FileAppend, % Array%indexForSeqNumber% . ",", C:\Project\sequenceSolver.f

            FileAppend, % Array%indexForSeqIndex% . ",", C:\Project\sequenceSolver.n
            FileAppend, % Array%indexForSeqNumber% . ",", C:\Project\sequenceSolver.n
        }
    }
    FileAppend, ).`n, C:\Project\sequenceSolver.f
    FileAppend, ).`n, C:\Project\sequenceSolver.n

}

testSequence := "findPattern("

Loop %numberOfSequencesToBeCreated% {
    loopIndex = %A_Index%
    newIndex := loopIndex + numberOfSequencesToBeCreated

    indexForSeqIndex := newIndex
    indexForSeqNumber := indexForSeqIndex + ArrayCount // 2

    if(loopIndex == numberOfSequencesToBeCreated) {
        testSequence := testSequence . Array%indexForSeqIndex% . ","
        testSequence := testSequence . Array%indexForSeqNumber% . ")."
    }
    else {
        testSequence := testSequence . Array%indexForSeqIndex% . ","
        testSequence := testSequence . Array%indexForSeqNumber% . ","
    }


}
RunWait, AutoHotkey.exe C:\Project\induce.ahk %testSequence%