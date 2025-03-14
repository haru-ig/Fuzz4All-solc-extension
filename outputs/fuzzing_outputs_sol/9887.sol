pragma solidity ^0.8.0;
contract New {
    function new(uint _b) pure public returns(uint) {
        return 5*_b;
    }
}
contract Fallback {
    fallback() external payable {
        require(msg.value == 1 ether);

    }
}
