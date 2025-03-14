pragma solidity ^0.8.0;
contract L5 {
    uint constant initialx = 0x01456001;
    function f() public pure returns (uint) {
        assembly {




        initialx := 0x01456001
        }
        return initialx + 0x3F7EFFCF;
    }
}
