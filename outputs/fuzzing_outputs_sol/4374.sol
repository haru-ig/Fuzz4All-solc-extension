pragma solidity ^0.8.0;
contract Mutator {
    function foo() public {
        if (msg.value > 0) msg.sender.transfer(msg.value);
        _;
    }
    fallback() external payable {require(false);}
}
