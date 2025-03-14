pragma solidity ^0.8.0;
contract ArrayMutationsB {
    uint256[] public array;
    uint256 currentLength;
    bool isMutated;
    function addNewElement() public {
        array.push(currentLength);
        currentLength++;
        array[currentLength-1] = 0;
    }
    modifier onlyIfArrayIsEmpty {
        if(currentLength == 0) {
            _;
        } else {
            require(false);
        }
    }
}

pragma solidity ^0.8.0;
contract ArrayMutationsC {
    uint256[] public array;
    uint256 currentLength;
    bool isMutated;
    bool arrayHasChanged;
    uint256[] arrayThatHasChanged;
    function addNewElement() public {
        if(currentLength == 0) {
            array.push(currentLength);
            currentLength++;
            array.push(currentLength);
            currentLength++;
            isMutated = true;
        }
        arrayHasChanged = true;
        arrayThatHasChanged.push(array[currentLength-2]);
    }
    modifier onlyIfArrayIsEmpty {
        if(currentLength == 0) {
            _;
        } else {
            require(false);
        }
    }
}
