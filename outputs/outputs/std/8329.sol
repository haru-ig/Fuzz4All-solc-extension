pragma solidity ^0.8.0;
contract ArrayMutationsD {
    uint256[] public array;
    uint256 currentLength;
    bool isMutated;
    uint256[] arrayChanged;
    uint256[] arrayThatChanged;
    function deleteFirstElement() public {
        arrayChanged.swap(array);
        require(array.pop() == 3);
        array.push(0);
        array.push(10);
        array.push(6);
        array.push(90);
        require(true);
    }
    modifier onlyIfArrayIsEmpty {
        if(currentLength == 0) {
            _;
        } else {
            require(false);
        }
    }
    modifier onlyIfNotDeletedAnything {
        if(currentLength!= 0) {
            _;
        } else {
            require(false);
        }
    }
}
