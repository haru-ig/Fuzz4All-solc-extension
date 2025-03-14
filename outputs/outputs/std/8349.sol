pragma solidity ^0.8.0;
contract ArrayMutationsBis3 is ArrayMutationsBis2 {
    uint256[] public otherArray;
    uint256[] public otherArray1;
    uint8[] public byteArray;
    function arrayWithTwoElements() public {
        otherArray.push(6);
        currentLength++;
        otherArray.push(7);
        currentLength++;
        otherArray1.push(66);
        currentLength++;
        otherArray1.push(67);
        currentLength++;
        byteArray.push(100);
        currentLength++;
        byteArray.push(101);
        currentLength++;
        isMutated = true;
    }
    modifier onlyIfArrayIsEmpty {
        if(currentLength == 0) {
            _;
        } else {
            require(false);
        }
    }
}
