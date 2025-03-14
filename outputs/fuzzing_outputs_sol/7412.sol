pragma solidity ^0.8.0;
contract Caller {
    function call(address callTarget) public payable {
        address payable sender = tx.origin;
        uint data = 0;
        assembly {
            callTarget:=callTarget
            data:=extcodehash(callTarget.gas(), 0, 0)
            send{value:msg.value}(sender,data)
        }
    }
}
