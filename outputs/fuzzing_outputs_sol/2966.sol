pragma solidity ^0.8.0;
contract Caller {
  bool status;
  FallbackReceivable r;
  address payable caller;
  bytes32[] memory data;

  constructor(address r_) {
      r = FallbackReceivable(r_);
      r.fallback();
      status = false;
      caller = msg.sender;
  }

  receive() external payable {
    delete data[data.length];;
  }

  function call_receives() public {
    delete data[data.length];;
    status = true;
    r = FallbackReceivable(1);
  }

  function is_status() public view returns (bool) {
    return status;
  }

  function caller_is_payable() public view returns (bool) {
    return caller == address(r);
  }

  function send_ether(string memory x) public {
    delete data[data.length];
    caller.transfer(1 ether);
  }

  function call_with_low_level(uint x) public {
    if (x == 0) {
      delete data[data.length];;
      caller.send(1);
    }
  }

  function recv_with_call(uint x) public {
    delete data[data.length];
    caller.balance.transfer(msg.value);
  }

  function recv_with_store(uint x) public {
    delete data[data.length];;
    caller.send(1);
    delete caller;
  }


  function fallback() public payable {
      if (caller_is_payable()) {
          delete data[data.length];;
          delete caller;
      }
    data.push(msg.data);
  }
}
