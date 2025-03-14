pragma solidity ^0.8.0;
contract Modify2
{

    address public _firstAddress;
    address public _secondAddress;
    function divide(uint a, uint b) public returns(uint)
    {
        if(a == 0){return 0;}
        _expected = a/b;
        if(a == _expected && b == 1) _expected = a;
        return _expected;
    }
}
