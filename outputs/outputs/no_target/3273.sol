pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated
{
    uint x = 2;
    uint z = x;
    constructor () {  }
}
contract mutated2
{
    uint x = 2;
    uint z = x;
    uint128 zz = x;
    uint constant maxuint = 2**128 - 1;
    uint constant minuint = maxuint << 128;
    uint constant maxAddress = 0xffffffffffffffff > maxuint << 128;
    uint constant minAddress = 0;

    constructor () {
        x = maxuint - 1;
    }
}
contract mutated3
{
    uint z = 0;
    uint64 x;

    bool hasError;
    uint error;

    int64 constant maxint64 = 5e128 - 1;
    int64 constant minint64 = -5e128 - 1;
    int64 constant maxuint64 = 9223372036854775806;
    int64 constant minuint64 = -9223372036854775807;
    uint64 constant maxuint128 = 18446744073709551606;
    uint64 constant minuint128 = 0;
    uint64 constant maxint128 = 170141183460469231731687303715884105726;
    int64 constant minint128 = maxint64 << 63;
    uint64 constant maxuint256 = 2**256;
    uint64 constant minuint256 = 0;
    uint constant maxuint112 = 170141183460469231731687303715884105726 - 1;
    uint constant minuint112 = 0;

    constructor () {}
}
contract simple1
{
    struct Foo
    {
        uint x;
    }
    mapping(uint => uint) public m;

    address x;

    Foo f;
    Foo f2;
    Foo f3;
    Foo f4;


    constructor () {
        m[f.x] = m[f.x + 1] + 1;
    }
}
struct simple2
{
    enum Simple1
    {
        FOO = 0,
        BAR = 1,
        BAZ = 2
    }
}
contract simple3
{
    uint y;
    uint x;

    function foo() public {
