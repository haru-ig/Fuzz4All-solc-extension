pragma solidity ^0.8.0;

contract Caller {
    uint8 constant private _value = 200;
    uint public balance;
    uint public constant _gasPrice = 500;
    bool internal _errorCalled;
    address internal _errorCallTarget;
    constructor() {
        balance = 0;
        _errorCalled = false;
        _errorCallTarget = address(this);
    }


    function() public payable   when (msg.value == _value)    {
      balance = 1000000;
    }

    function() external payable    {
        if (msg.value == _value) {
            balance = 1000000;
        } else {
            _errorCalled = true;
            _errorCallTarget = msg.sender;
        }
    }


    function balanceOf() public view returns (uint)   {
        return address(this).balance;
    }
}
