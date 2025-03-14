pragma solidity ^0.8.0;
contract ArrayDemo {
    uint256[3] arr;
    function min(uint256 x, uint256 y) public pure returns(uint256) {
        if (x < y) {
            return x;
        }
        return y;
    }
    function max(uint256 x, uint256 y) public pure returns(uint256) {
        if (x > y) {
            return x;
        }
        return y;
    }
    function sum(uint256 x, uint256 y) public pure returns(uint256) {
        return x + y;
    }
    function setArray(uint256[3] memory m) public {
        return arr;
    }
    function getArray() public view returns(uint256[3]) {
        return arr;
    }
    function sort(uint256[3] memory m) public { }
}
