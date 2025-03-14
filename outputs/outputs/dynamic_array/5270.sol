pragma solidity ^0.8.0;
contract Test47 {
    function g() public pure returns (bool[] memory) {
        bool[] memory s;
        for (uint i = 0; i < s.length; ++i) {
            s[i] += true;
        }
        return s;
    }
}
