pragma solidity ^0.8.0;
contract semanticallyequivalent1
{
    uint x;
    function __fallback(address payable _sender, uint _value) payable {
        if (_value == x) {
            x = 2;
        }
    }
}
