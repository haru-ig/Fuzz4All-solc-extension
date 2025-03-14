pragma solidity ^0.8.0;

contract L21 {
    uint constant value = 0xbd2b344401d8bd7d1733f9a0c2b2;
}

contract L22 {
    uint public value = 0;
    function increment() public {
        uint newValue;
        {
            uint a = 0;
            newValue = value;
        }
        value = newValue;
    }
    function test() public {
        increment();
        assert( value == value + 0x118a5b6e5401d8bd7d1733f9a0c2b2 );
    }
}
