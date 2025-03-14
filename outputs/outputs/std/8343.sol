pragma solidity ^0.8.0;
contract ArrayMutationsNoBis2 {
    uint256[] public arrayOfIntegers0 = createArrayOf(3);
    uint256[] public arrayOfIntegers1 = createArrayOf(4);
    uint256[] public arrayOfIntegers2 = createArrayOf(8);
    uint256[] public array;
    uint256 currentLength0;
    uint256 currentLength1;
    uint256 currentLength2;
    bool isMutated;
    function addNewElement() public {
        if(arrayOfIntegers0.length == currentLength0 + 1) {
            arrayOfIntegers0.push(currentLength0);
            array.push(currentLength0);
            array.push(currentLength0);
            arrayOfIntegers1.push(currentLength1);
            array.push(currentLength1);
            array.push(currentLength1);
            arrayOfIntegers2.push(currentLength2);
            array.push(currentLength2);
            array.push(currentLength2);
            arrayOfIntegers0.push(Uint256(~(0)));
            array.push(Uint256(~(0)));
            array.push(Uint256(~(0)));
            array.push(Uint256(~(0)));
            array.push(Uint256(~(0)));
            arrayOfIntegers1.push(Uint256(~(0)));
            array.push(Uint256(~(0)));
            array.push(Uint256(~(0)));
            array.push(Uint256(~(0)));
            array.push(Uint256(~(0)));
            arrayOfIntegers2.push(Uint256(~(0)));
            arrayOfIntegers0.push(Uint256(~(0)));
            arrayOfIntegers0[currentLength0] = currentLength2;
            isMutated = true;
        } else {
            require(false);
        }
        currentLength0++;
        currentLength1++;
        currentLength2++;
    }
    function createArrayOf(uint256 size) internal pure returns (uint256[] memory) {
        uint256[] memory output = new uint256[](size);
        for(uint256 i = 0; i < size; i++) {
            output[i] = i+1;
        }
        return output;
    }
    modifier onlyIfArrayIsEmpty {
        if(currentLength0+1 == 0) {
            _;
        } else {
            require(false);
        }
    }
}
contract ArrayMutationsAllBis2 {
    uint256[] public arrayOfIntegers;
