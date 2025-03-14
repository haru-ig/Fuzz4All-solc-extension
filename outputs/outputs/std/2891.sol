pragma solidity ^0.8.0;
contract EquivalentArithmetic200 is EquivalentArithmetic101, EquivalentArithmetic102 {
    function min(uint num1, uint num2) public pure returns (uint) {
        return num1 < num2? num1 : num2;
    }
    function max(uint num1, uint num2) public pure returns (uint) {
        return num1 > num2? num1 : num2;
    }
}
contract EquivalentArithmetic201 is EquivalentArithmetic101, EquivalentArithmetic102 {
    function min(address addr1, address addr2) public pure returns (address) {
        if (addr1 < addr2) {
            return addr1;
        } else {
            return addr2;
        }
    }
    function max(address addr1, address addr2) public pure returns (address) {
        if (addr1 < addr2) {
            return addr2;
        } else {
            return addr1;
        }
    }
}
contract EquivalentArithmetic202 is EquivalentArithmetic101, EquivalentArithmetic102 {
}
