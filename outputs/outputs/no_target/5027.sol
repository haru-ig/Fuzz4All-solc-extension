pragma solidity ^0.8.0;
interface I2 { function f(uint256); }
contract IA2 {
    function G(uint256 a) public pure returns(uint256, uint256);
    function f(uint256 b) public pure returns(uint256) { return 1; }
    function f(uint256 a) public pure returns(uint256, uint256, uint256, uint256, uint256) { return 1; }
}
