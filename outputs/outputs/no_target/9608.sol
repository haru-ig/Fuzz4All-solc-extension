pragma solidity ^0.8.0;
contract C {
    function foo256(uint128 data) public view returns (uint256);
    function foo512(uint224 data) public view returns (uint512);
    function foo1024(uint256 data) public view returns (uint1024);
}
