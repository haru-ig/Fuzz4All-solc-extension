pragma solidity ^0.8.0;
contract L20 {
    struct E {
        string s;
    }
    function f() public pure returns (bytes memory) {
        E storage e = E(keccak256('test')).s[3];
        assembly {
            e := 0x00
        }
    }
}
