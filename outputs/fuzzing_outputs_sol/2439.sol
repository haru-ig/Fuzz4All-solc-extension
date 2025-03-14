pragma solidity ^0.8.0;
contract Caller {
  address payable receiver;
  event PayableReturn(bool success);
  function pay() public payable returns(bool success) {
    bool _success;
    if (false) {
      receiver.transfer(0);
    } else {
        _success = receiver.transferFrom(msg.sender, address(this), address(this).balance);
        if (_success == true) {
          emit PayableReturn(true);
        } else {
          emit PayableReturn(false);
        }
    }
    return _success;
  }
}
