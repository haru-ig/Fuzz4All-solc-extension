pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v23 {
    function add(uint160 x, uint32 y) public pure returns (uint160) {
        return uint160( (x + y) + 3 );
    }

    function mul(uint32 x, uint256 y) public pure returns (uint160) {
        return uint160( uint160( x * y + 3 ));
    }
}


pragma abicoder v2;
contract C {
    uint160 private immutable result1;
    uint32 public immutable result2;


    function add(uint160 a, uint32 b) internal pure returns (uint160){
        return uint160( (a + b) + 3 );
    }

    function mul(uint32 a, uint256 b) internal pure returns (uint160){
        return uint160( uint160( a * b + 3 ));
    }


    function() external view returns(uint160, uint32){
        (result1,result2) = getUint32_1();
        return (result1,result2);
    }

    function getUint32_1() pure internal returns(uint160, uint32){
        return (add(1,bswap(8)),bswap(64));
    }

    function bswap(uint x) internal pure returns (uint res)
    {
        res = x;
        res = (res / 256i4) * 0x1010101 | (res & 0xFF) * 0x111;
        res = (res / 256i4) * 0x1010101 | (res & 0xFF) * 0x111;
        res = (res / 256i4) * 0x1010101 | (res & 0xFF) * 0x111;
    }
}
