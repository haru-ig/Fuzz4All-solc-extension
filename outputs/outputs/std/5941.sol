pragma solidity ^0.8.0;
contract SemanticEvidentChanges1 {
    function _multiplicationTest(uint256 x,uint256 y)public pure returns (uint256) {
        return (uint256 (uint8(10)*(uint8(10))).add(x).div(y).sub(uint256(uint8(2))).div(uint256(uint8(10))));
    }
}

pragma solidity ^0.8.0;
contract SmallerPowerOfTwo {
    function smallerNumber(uint256 numerator)constant public returns (uint256) {
        uint256 powerOfTwo=2;
        while (2 * powerOfTwo < numerator) {
            powerOfTwo = 2 * powerOfTwo + 1;
        }
        return powerOfTwo;
    }
}
