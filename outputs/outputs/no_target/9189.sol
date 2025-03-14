pragma solidity ^0.8.0;
interface i {
    function x(address, address, uint256) public returns (uint256, uint256);
    function y(uint256) public returns (address);
    function z(address, uint256) public payable returns (uint256, uint256, uint512, uint512);
    function w(uint256) public returns (uint256[], uint256[][]);
}
