pragma solidity ^0.8.0;
contract Modulated xor {
    uint256 a;
    uint256 result;
    function setA() internal {
        a = 3;
    }
    function getA() public view returns (uint256) {
        return a;
    }
    function setResult() internal {
        result = a;
        a*=(5*3);
    }
    function getResult() public view returns (uint256) {
        return result;
    }
}
