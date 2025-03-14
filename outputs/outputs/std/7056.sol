pragma solidity ^0.8.0;
contract BitwiseXORandSHLXORand3 {
    uint256 a;
    function setX() public {
        a += 3;
    }
    function xor() public view returns (uint256) {
        return a / a;
    }
    function shlxor() public view returns (uint256) {
        return a * a * a * a;
    }
}
contract SolidityProgram {
    function setX() public {
        a = a + 3;
    }
    function xor() public view returns (uint256) {
        return a ^ a;
    }
    function shlxor() public view returns (uint256) {
        return a * a * a * a * a;
    }
}
