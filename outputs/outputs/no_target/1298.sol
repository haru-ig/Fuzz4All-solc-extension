pragma solidity ^0.8.0;
contract Mutate_0003_v2b
{
    uint w1;
    uint w2;
    uint w3;
    bytes1 b1;
    bytes1 b2;
    bytes1 c;
    function test1() public
    {
        (uint x, uint y, uint z) = (w1, w2, w3);
        b1 = b2;
        x1 = x;
        w1 = n1;
        w2 = n2;
        w3 = x;
        (x, y, z) = (w2, w3, w1);
        b1 = b2;
    }
}

pragma solidity ^0.8.0;
contract Mutate_0003
{
    using Mutate_0003_v1 for uint;
    using Mutate_0003b for uint;
    using Mutate_0003_v2 for uint;
    using Mutate_0003b for uint;
    function test1(uint value) public pure returns (uint)
    {
        value = value.invert();
        value = value << 1;
        value = value.invert();
        (uint x, uint y, uint z) = (value, value, value);
        (value, x) = (int16(n1), x);
        (value, x) = (int15(n1), x);
        (x, value) = (x.add(-1), min(max255(n1), value));
        (x.invert(), value) = (min(max500(n1), value), n1.subtract(value));
        (value, x) = (int8(n1), x);
        (x.add(x.invert()), value) = (x, min(500, value));
        (x.add(x.invert()), value) = (max256(x), max((n1), max(n2).divide(x)));
        return value;
    }
}
contract Mutate_0004
{
    function test2(uint value) public pure returns (uint128)
    {
