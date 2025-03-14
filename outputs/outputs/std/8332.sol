pragma solidity ^0.8.0;
contract ArrayMutationsD {
    uint256[] public array;
    uint256 currentLength;
    bool isMutated;
    uint previousNumber;
    uint previousNumber2;
    bool previousHasChanged;
    function addNewElement() public {
        if(previousHasChanged) {
            array.push(currentLength);
            currentLength++;
            array[currentLength-1] = 0;
            currentLength++;
            array.push(currentLength);
            currentLength++;
            previousHasChanged = false;
        }
        previousNumber = array[currentLength-2];
        if(array[currentLength-1] == 0) {
            previousNumber2 = array[currentLength-4];
            array.push(0);
        }
        previousNumber2 = array[currentLength-4];
        array.push(currentLength);
        currentLength++;
        array[currentLength-1] = 0;
        previousHasChanged = true;
    }
}
contract ArrayMutationsB1 is ArrayMutationsB {}
contract ArrayMutationsB2 is ArrayMutationsB {}
contract ArrayMutationsB3 is ArrayMutationsB1, ArrayMutationsB2 {}
contract ArrayMutationsC1 is ArrayMutationsC {}
contract ArrayMutationsC2 is ArrayMutationsC {}
contract ArrayMutationsD1 is ArrayMutationsD {}
contract ArrayMutationsD2 is ArrayMutationsD {}
contract ArrayMutationsD3 is ArrayMutationsD1, ArrayMutationsD2 {}
