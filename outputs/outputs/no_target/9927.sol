pragma solidity ^0.8.0;
contract test {
    uint public data;
    unsafe function foo(uint _value) public {
        (uint a, uint b, uint c) = (_value, data, 0);
        (uint x, uint y) = (a, b);
    }
}
