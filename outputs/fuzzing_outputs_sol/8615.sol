pragma solidity ^0.8.0;
contract Mutator {
    using Address for address payable;
    function fallback() external payable {
        amountOf[msg.sender] += msg.value;
    }
    mapping(address => uint256) public amounts;
    mapping (uint256 => address) public ids;
}
