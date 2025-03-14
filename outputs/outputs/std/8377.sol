pragma solidity ^0.8.0;
contract ArrayMutationsBis5 {
    uint256[] public arrayOfIntegers;
    uint currentLength;
    bool isMutated;
    uint256 value;
    function addNewElement() public {
        currentLength++;
        value = 1 + currentLength;
        arrayOfIntegers.push(value);
    }
    function getElement(uint index) public view returns (uint) {
        return arrayOfIntegers[index];
    }
    modifier onlyIfArray1IsNotEmpty {
        if(currentLength!= 0) {
            _;
        } else {
            require(false);
        }
    }
    function add1toCurrentLength() public onlyIfArray1IsNotEmpty {
        currentLength++;
        value = 1 + currentLength;
        arrayOfIntegers.push(value);
    }
    function add2toCurrentLength() public onlyIfArray1IsNotEmpty {
        currentLength++;
        value = 2 + currentLength;
        arrayOfIntegers.push(value);
    }
    function mutateNumber() public {
        uint256 oldNumber;
        uint index;
        for(index = 0; index < currentLength; index++) {
            oldNumber = arrayOfIntegers[index];
            arrayOfIntegers[index] = currentLength + oldNumber;
        }
    }
}
