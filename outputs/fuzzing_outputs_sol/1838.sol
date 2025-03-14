pragma solidity ^0.8.0;

contract LowLevelCaller {
    uint constant private _contractInitialBalance = 100;
    uint8 constant private _value = 7500;
    bool public flag;
    function fallback() public payable payable   {
      require(msg.value == _value && msg.data.length == 0);
      flag = true;
    }
    function lowLevelCall() public payable returns (uint) {
      if (flag) {
        return _contractInitialBalance;
      } else {
        return msg.value;
      }
    }
}
