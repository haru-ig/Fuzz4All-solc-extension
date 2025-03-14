pragma solidity ^0.8.0;
contract Mutator {
     function setReceiver(address payable x) public {
         _receiver = x;
     }
     receive() internal payable {
         _receiver.transfer(msg.value);
     }
     address payable private _receiver;
}
