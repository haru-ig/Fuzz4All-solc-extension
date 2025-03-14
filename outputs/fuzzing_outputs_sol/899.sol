pragma solidity ^0.8.0;
contract Caller {
    receive () external payable {
        (uint amount, bytes memory data) = msg.sig;
    }
}
