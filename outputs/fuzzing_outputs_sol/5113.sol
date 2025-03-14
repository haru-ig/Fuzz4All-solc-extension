pragma solidity ^0.8.0;

contract C3 {
    mapping(address => uint256) public balances;

    receive() external payable {
        balances[msg.sender] += msg.value;
    }
}
contract MainnetFallback {
    function () external payable {}
}
