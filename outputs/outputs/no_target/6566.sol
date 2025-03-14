pragma solidity ^0.8.0;
contract myContractD is modifierD
{
    function g(uint x) public returns (uint) {
        uint y = uint(x / 256);
        return y + x;
    }
}

pragma solidity ^0.8.0;
use myContractD;
contract Caller{
    function x() public returns (uint) {
        uint y;
        (y, );
        {
            uint x;
            (x, );
        }
        uint z;
        (y, z);
    }
    function y() public returns (uint) {
        (,);
        {
            (,);
        }
        uint x;
        (x,);
        return x;
    }
}
contract myContractA
{
    function f() public returns (uint) {
        return g();
    }
    function g() public returns (uint) {
        return 1;
    }
}

pragma solidity ^0.8.0;
contract myContractB is myContractA
{
    function y() public {
        uint a;
        (a, );
    }
}
contract Caller2 is Caller
{
    function x() public returns (uint) {
        uint z;
        (uint x, );
        if (x == 1) {
            (x, z);
        }
        else {
            z;
        }

        return x + 1;

    }
}
contract Caller3 is Caller
{
    function x() public returns (uint) {
        uint y;
        (uint x, uint z);
        (y, z );
        (x, z);
        return x;
    }
}
contract myContractF {
    function g() public returns (uint)
    {
        return uint(256) << 8;
    }
}
