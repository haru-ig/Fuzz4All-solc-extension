pragma solidity ^0.8.0;
contract MultiGenerator_4 {
    uint minValue;
    uint decrement;
    uint maxValue;
    function generateMultiple(uint num1, uint num2) public pure returns(uint numSum3) {
        numSum3 = num1*decrement + num2;
        return numSum3;
    }
    receive() external payable {}
}

pragma solidity 0.7.6;
contract SafeMath {


function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
    uint256 c = a + b;
    if (c < a) return (false, 0);
    return (true, c);
}


function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
    if (b > a) return (false, 0);
    uint256 c = a - b;
    return (true, c);
}


function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
    if (a == 0) return (true, 0);
    uint256 c = a * b;
    if (c / a!= b) return (false, 0);
    return (true, c);
}


function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
    if (b == 0) return (false, 0);
    uint256 c = a / b;
    return (true, c);
}


function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
    if (b == 0) return (false, 0);
    return (true, a % b);
}


function add(uint256 a, uint25
