pragma solidity ^0.8.0;
contract Caller2 {

  receive () external payable { }

  function callBackFunc(uint _value) public payable {
    uint v = 1;

    while (v < 100) {
      (bool successValue, ) = address(uint160(msg.sender)).call{value: _value}(abi.encode(msg.sig, v, address(this)));

      if(successValue === false) {
        return;
      }

      v += v;
    }
  }
}
