pragma solidity ^0.8.0;
contract Caller {
    uint constant _value = 32;
    function () external payable {
        require(msg.value == _value);
    }

    function () external pure {
        require(msg.value == 0);
    }
}
