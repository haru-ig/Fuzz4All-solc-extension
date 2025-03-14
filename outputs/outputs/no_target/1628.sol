pragma solidity ^0.8.0;
contract Semantic0008 {
    function equalWithoutCast(uint256 x, uint256 y) public pure {
        require(!(x >= uint64(uint160(y))));
    }
    function equalWithoutCast2(uint128 x, uint256 y) public pure {
        require(!(x >= uint64(uint256(y))));
    }
    function equalWithoutCast3(uint256 x, uint256 y) public pure {
        require(!(x >= uint128(uint256(y))));
    }
    function equalWithoutCast4(uint128 x, uint256 y) public pure {
        require(!(x >= uint128(uint256(y))));
    }
    function equalWithoutCast5(uint128 x, uint256 y) public pure {
        require(!(x >= uint128(uint256(y))));
    }
}
