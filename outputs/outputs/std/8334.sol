pragma solidity ^0.8.0;
contract ArrayMutationsD {
    uint256[] public array;
    uint256 currentLength;
    bool isMutated;
    bool arrayHasChanged;
    uint256 previousArrayLength;
    uint256 previousArrayLengthTwo;
    uint256 nextArrayLength;
    bytes32 addressInArrayToCopy;
    uint256[] arrayThatHasChanged;
    string name;
    function getName() public {
    name =  "This is a string";
    addressInArrayToCopy = 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    }
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
    modifier onlyIfAddressIsValid {
        if(addressToCopy == 0x000000000000000000000000000000000000000000000000000000000000000 && address(array[currentLength-2]) == array[currentLength-2]) {
            _;
        } else {
            require(false);
        }
    }
    modifier onlyIfListIsEmpty {
        if(address(array[currentLength-2]) == 0x0000000000
