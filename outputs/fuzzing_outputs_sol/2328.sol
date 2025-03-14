pragma solidity ^0.8.0;
contract Caller {
    address payable _to;
    function callTransfer(uint amount) pure public {
        _to.transfer(amount);
    }
}
