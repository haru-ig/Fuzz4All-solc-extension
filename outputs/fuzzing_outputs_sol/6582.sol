pragma solidity ^0.8.0;
contract TransferException {
    uint constant private val = 25;
    function set() public {
        require(msg.value == val);
    }
}
