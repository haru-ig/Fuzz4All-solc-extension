pragma solidity ^0.8.0;
contract Math {
    function myAdd(uint256 x, uint256 y) public pure returns (uint256 z) {
        z = x + y;
    }
    function mySub(uint256 x, uint256 y) public pure returns (uint256 z) {
        z = x - y;
    }
    function myMult(uint256 x, uint256 y) public pure returns (uint256 z) {
        z = x * y;
    }
    function myDiv(uint256 x, uint256 y) public pure returns (uint256 z) {
        z = x / y;
    }
}
