pragma solidity ^0.8.0;
contract Ez {
    mapping(address => uint) public addressToUint;
}
contract Flop {
    function getUint(address addr) public pure returns (uint) {}
    function getAddress(uint data) public pure returns (address) {}
    function getAddress(string memory data) public pure returns (address) {}
}
