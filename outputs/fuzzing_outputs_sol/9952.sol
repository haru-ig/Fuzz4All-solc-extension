pragma solidity ^0.8.0;
contract Caller {
    constructor() {}
    function call() public {}
    function call(uint _value) public {
      _call(_value);
    }
    function _call(uint _value) private {
      msg.sender.transfer(_value);
    }
}
contract DummyToken {
    constructor() {
      balances[msg.sender] = 100000;
    }
}
