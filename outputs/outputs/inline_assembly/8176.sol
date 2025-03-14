pragma solidity ^0.8.0;
contract Modified {
    uint256 public value;
    constructor (uint256 _value) public {
        value = _value;
    }
    function test(Mutated _me) public {
        _me.a += 2;
        _me.a /= 2;
        _me.a *= 2;
        _me.a += 1;
        _me.value -= 1;
        _me.value += 1;
        _me.a /= 1;
        _me.a *= 1;
    }
}
