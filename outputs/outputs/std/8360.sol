pragma solidity ^0.8.0;
contract RandomMutatedBis1 {
    uint256[] public array;
    uint256[] public arrayOfIntegers;
    uint256 currentLength;
    uint256 minValue;
    uint256 maxValue;
    uint256 maxValueInclusive;
    bool isMutated;
    uint256 x1;
    uint256 x2;
    uint256 x3;
    uint256 y1;
    modifier onlyIfArrayIsEmpty {
        if(currentLength == 0) {
            _;
        } else {
            require(false);
        }
    }
}
