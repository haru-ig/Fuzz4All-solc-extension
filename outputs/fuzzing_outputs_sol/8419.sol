pragma solidity ^0.8.0;
contract Caller {
  FallbackExample private _fallbackExample;

  receive () external payable {
    _fallbackExample.withdraw(msg.value);
  }
}
