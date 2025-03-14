pragma solidity ^0.8.0;
contract Mutate_0003_v2
{
    uint w1 = 0;
    uint w2 = 0;
    uint w3 = 0;
    bytes1 b1;
    bytes1 b2;
    bytes1 c;
    uint constant n1 = 0;
    uint constant n2 = 2**16 + 1;
    uint x1 = 0;
    function test1() public
    {
        (uint x, uint y, uint z) = (w1, w2, w3);
        x1 = x;
        w1 = n1;
        w2 = n2;
        w3 = x;
        (x, y, z) = (w2, w2, w1);
        b1 = b2;
        x1 = x;
        x = n1;
        x = -x;
        x = 1u/(x/2);
        c = b1;
        c = abicoder.encodeWithSignature("func(address)", 0x781c2f7208ba8b363c1a15ebcc0a825);
        c = bytes1(abicoder.address(0x781c2f7208ba8b363c1a15ebcc0a825));
        c = bytes1(abicoder.encode("function(uint256)", 1));
    }
}
