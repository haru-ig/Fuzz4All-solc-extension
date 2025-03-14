pragma solidity ^0.8.0;
contract EmptyFallback {
    receive() public pure {}
}
contract CallReceiver {
   receive() public {

   }
   receive() public view {}
   receive() public payable {}
   receive() public pure {}
   receive() public nonpayable {}
}
contract FallbackReceiver {
    address payable receiver;
    receive() public payable {
        receiver.transfer(this.balance);
    }
}
