pragma solidity ^0.8.0;
contract Test
{
    uint int_max = 2**36 - 1;
    uint x = 2**36 - 1;
    uint y;
    uint z = y + int_max;
    uint w = 1;
    function test() public {
        z = x / y;
    }
}

pragma solidity ^0.8.0;
contract Test
{
    uint x = 0x80000000000000000000000000000000000000000000000000000000000000000;
    uint z = addInt(uint16(x), uint16(x));
}

pragma solidity ^0.8.0;
contract Test
{
    uint x = 0x8000000000000000000000000000000000000000000000000000000000000000;
    uint y = 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    function addInt(uint16 a, uint16 b) internal pure returns (uint x){
        uint z = 0;
        uint256 x1 = uint256(a); uint256 x2 = uint256(b);
        while (x2 > 0) {
            x1 = x1 + x2;
            x = uint256(uint256(x1 >> 16)).add(uint256(uint256(x1) & 65535));
            x2 = x1 & 65535;
        }
        return  x;
    }
    uint z;
    function test() public {
        z = addInt(uint16(x), uint16(x));
    }
}

pragma solidity ^0.8.0;
contract Test
{
    uint x = 0x800000000000000000000000000000000000000000000
