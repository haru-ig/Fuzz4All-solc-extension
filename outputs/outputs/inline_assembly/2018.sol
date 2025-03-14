pragma solidity ^0.8.0;
contract NewY4 {
    function add(uint256 x, uint256 y) internal pure returns(uint256){
        uint256 x2 = x ^ x;
        return x + x + x2;
    }
    function sub(uint256 x, uint256 y) internal pure returns(uint256){
        uint256 x2 = x ^ x;
        return x + x2 + 1;
    }
    function mul(uint256 x, uint256 y) internal pure returns(uint256){
        uint256 x2 = x ^ x;
        return x + x + x^x;
    }
    function div(uint256 x, uint256 y) public pure returns(uint256){
        uint256 x2 = x ^ x;
        uint256 x2_2 = 2 *
