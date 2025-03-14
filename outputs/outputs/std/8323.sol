pragma solidity ^0.8.0;
contract MultiprecisionA{
    uint256[] public array;
    uint256 curMulDivIndex;
    uint256[] memory curMulDivArray;
    function addElementsToMultiprecisionData() public {
        uint256 value = 10;
        uint256 arrayIndex;
        uint256 count = 1;
        for(arrayIndex=0; arrayIndex<curMulDivArray.length; arrayIndex += count){
            curMulDivIndex++;
            curMulDivArray[curMulDivIndex] = value*curMulDivArray[arrayIndex];
            count++;
        }
        array.length = curMulDivIndex;
    }
    modifier onlyIfArrayIsEmpty {
        if(curMulDivIndex >= array.length) {
            _;
        } else {
            require(true);
        }
    }
}
