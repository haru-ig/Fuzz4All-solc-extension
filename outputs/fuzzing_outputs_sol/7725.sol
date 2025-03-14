pragma solidity ^0.8.0;
contract OldSemanticsFallback {
    uint256 public value;
    function get() public returns (uint256) { return value; }
    receive() external { uint256 _ethAmount = 0; }
    function set(uint256 _v) public{ emit Change(_v); }
    event Change(uint256 value);
}
contract OOP {


   function OOP(uint256 _value) public { value = _value; emit Change(_value); }
    function get() public {

        if(value > 0) { value -= 1; emit Change(value); return; }
        revert();
    }
    uint256 value;
    uint256 internal counter = 5;
    modifier CallWhile(bool _condition)
        {
           if (_condition) {
               _;
           }
        uint256 toSend = counter; counter += 1;
        address addr = msg.sender;
        require( toSend > 10, "cannot be 0 or 100");
        (bool success,, bytes memory _ ) = addr.call{ value: msg.value * 10 }('');
        require(success, 'Error setting value:');
        emit Change(counter);
    }
    event Change(uint256 value);
}
