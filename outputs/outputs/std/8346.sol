pragma solidity ^0.8.0;
contract ArrayMutationsBis3 {
    string[] public textArray;
    uint[] public textArrayU;
    uint256 currentLength;
    bool isMutated;
    function addNewElement() public {
        textArray.push("String");
        textArray.push("String");
        textArray.push("String");
        currentLength++;
        textArrayU.push(1);
        textArrayU.push(1);
        textArrayU.push(1);
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
