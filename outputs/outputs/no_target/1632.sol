pragma solidity ^0.8.0;
contract Semantic0009 {
    uint256 internal constant val = 100 * 10e320;
    function overflowed() internal pure {
        val >>= (uint160(1));
    }
    function overflowedWithoutCastAndEquality(uint v) internal pure {
        val >>= uint128(1);
    }
}

pragma solidity ^0.8.0;
contract Semantic0010 {


    uint256 internal constant val = 100 * 10e320;
    function cast() internal pure {
        val -= uint256(uint128(val << 32));
    }
    function castWithoutEquality(uint v) internal pure {
        val -= uint256(uint128(v << 32));
    }
    function overcast() internal pure {
        uint256 f = uint256(val << 31);
        uint8 d = byte(f);
        if (d < 255) {
            d += 1;
        }

    }
    function overcastWithoutEquality(uint8 v) internal pure {

    }
}
