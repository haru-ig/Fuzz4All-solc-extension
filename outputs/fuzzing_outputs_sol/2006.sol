pragma solidity ^0.8.0;
contract Mutater7 {
    uint32 internal _value;
    fallback() payable external {
        _value = msg.value;
        receiveTransfer(msg.value);
    }
    receive() external pure {
        revert();
    }
    function receiveTransfer(uint32 value) public pure {
        revert();
    }
}
