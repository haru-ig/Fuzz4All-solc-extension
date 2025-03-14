pragma solidity ^0.8.0;
contract Test48 {
    function f() public pure returns (uint[] memory) {
        uint[] memory s;
        s[0]= 1100;
        s[1]= bytes(0);
        bytes memory c = bytes(0x2000000);
        s[2] = uint(10000) * c + s[1];
        s[3] = 39;
        for (uint i = 0; i < s.length; ++i) {
            s[i] += 0x39;
        }
        return s;
    }
}
