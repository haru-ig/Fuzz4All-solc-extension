pragma solidity ^0.8.0;
contract ArrayMutationsB is ArrayMutationsA {
    uint256 lastElement;
    uint256 lastElementIndex;
    constructor() public {
        array.push(30);
    }
    function mutate() public {
        lengthMutate();
        lengthAdd();
        currentLengthAdd();
        lastIndexMutate();
        lastIndexAdd();
    }
    modifier onlyIfArrayIsNotEmpty {
        if(currentLength > 0) {
            _;
        } else {
            require(true);
        }
    }
    function lengthMutate() public onlyIfArrayIsEmpty {
        array.push(array.length);
        currentLength++;
    }
    function currentLengthAdd() public onlyIfArrayIsNotEmpty {
        array.push(currentLength);
        currentLength++;
    }
    function lastIndexMutate() public onlyIfArrayIsEmpty {
        lastElement = array[array.length-1];
        lastElementIndex = lastElementIndex + 1;
    }
    function lastIndexAdd() public onlyIfArrayIsNotEmpty {
        array.push(lastElementIndex);
        lastElementIndex++;
    }
}
