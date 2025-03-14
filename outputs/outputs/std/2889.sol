pragma solidity ^0.8.0;
contract EquivalentArithmetic100 {
    function max(uint num1, uint num2) public pure returns (uint) {
        return num1 > num2? num1 : num2;
    }
    function min(uint num1, uint num2) public pure returns (uint) {
        return num1 < num2? num1 : num2;
    }
}
contract EquivalentArithmetic101 is EquivalentArithmetic100 {
}
contract EquivalentArithmetic102 is EquivalentArithmetic100 {
}
