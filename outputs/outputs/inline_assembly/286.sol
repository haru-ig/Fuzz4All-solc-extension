pragma solidity ^0.8.0;
contract E7
{
    uint public _x;
    function subtract_internal1_2 () internal {
        _x = _x ^ (2**31);
    }
}
