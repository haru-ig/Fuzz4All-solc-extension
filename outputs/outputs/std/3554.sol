pragma solidity ^0.8.0;
contract Test {
    uint256 constant val = 1e1000;
    function add() internal {
        uint i = 0x100000000000000000000000000000000000000;
        i = i + 3;
        uint j = uint(i - 1);
        uint k = i / 3;
        uint b = j.toUint256();
        uint k1 = k.toUint256();
        uint b1 = uint256(b >> 1);
        uint c = b1.toUint256();
        uint r = 1e80000000;
        uint z = uint256(uint(r * val));
        require(b1 <= uint256(c));
    }
}
