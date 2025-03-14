pragma solidity ^0.8.0;
contract Caller {
    address payable _new;
    receive()
    {
        _new.transfer(msg.value);
    }
}
