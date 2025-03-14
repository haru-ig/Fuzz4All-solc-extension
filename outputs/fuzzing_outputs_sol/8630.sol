pragma solidity ^0.8.0;
contract Mutator is Mutator {
    uint256 public totalAmount = 1 ether;

    modifier canTransfer(address _to) {
        require(
            totalAmount >= msg.value);
        totalAmount -= msg.value;
        _;
    }

    fallback () external payable {
        canTransfer.call.value(msg.value)(address(this));
    }
}
