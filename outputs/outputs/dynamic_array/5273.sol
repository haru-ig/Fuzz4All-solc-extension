pragma solidity ^0.8.0;
contract Test48 {
    function g() public pure returns (uint[] memory) {
        uint[10] memory s;
        for (uint i = 0; i < s.length; ++i) {
            s[i] += 0x39;
        }
        return s;
    }
}
