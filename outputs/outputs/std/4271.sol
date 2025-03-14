pragma solidity ^0.8.0;
interface IArray {
    function mod(uint256 idx, uint256 modulus) public;
    function mod(uint256 idx, uint256 modulus, uint256 a) public;
}
