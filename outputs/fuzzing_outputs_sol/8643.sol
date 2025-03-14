pragma solidity ^0.8.0;
contract Mutator {
    mapping(address => uint256) public amounts;
    modifier payableReceive {
        uint256 amount = msg.value;
        require((address(this).balance % 10000) == 0, "1st half");
        amounts[msg.sender] += amount;
        _;
    }
    receive() payableReceive {}
    uint128 half;
}
