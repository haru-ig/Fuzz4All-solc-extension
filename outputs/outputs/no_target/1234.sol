pragma solidity ^0.8.0;
contract Injection_02
{
    constructor() public {}
    function add(uint a, uint b)
        public
        pure
        returns( uint )
    {
        return a + b;
    }
}

pragma solidity ^0.8.0;
contract Injection_03
{
    uint private uint_value;
    function set(uint_value) public { uint_value = 6; }
    function set0(uint_t0) public { uint_value = 7; }
    function f() public { set0(uint_value); }
}
contract Injection_04
{
    uint constant uint_max = uint(1) << 256;
    function set(uint_w0) public { uint_w0 = uint_max; }
    function f() public { set(uint_value); }
}
