pragma solidity ^0.8.0;
contract Modification{
    uint256 public a;
    uint256 public b;
    function f(uint256 _b, uint256 _value) public returns (uint256){
        b = _b % type(uint256).max;
        a = b * _b;
        b += _value + value;
        c = (a * b) % (b + value);
        return c;
    }
}
