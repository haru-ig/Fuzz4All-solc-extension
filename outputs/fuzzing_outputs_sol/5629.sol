pragma solidity ^0.8.0;
contract semanticallyequivalent2
{
    uint uinta;
    mapping (uint => uint) uintb;
    function g (uint x, uint y, uint z) public pure {
        if (x > 5 && z > 3)
        {
            uint a = (uint2(x)) + uinta;
            uint b = (uint2(y)) + uintb[x];
            uint c = (uint2(z)) + uintb[x + y];
        }
        uintb[x + y + z + 1] = a + b + c;
    }
    receive () payable {

    }
    function f (uint x, uint y, uint z) public pure
    {
        uinta = x;
        uintb[x + y + z] = 2;
    }
}
