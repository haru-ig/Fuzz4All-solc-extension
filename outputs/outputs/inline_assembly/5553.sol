pragma solidity ^0.8.0;
contract ConstantAccessBlock03 {
    uint constant constantA;
    function test() public pure {
        uint[1] memory _a;
        assembly {
            _a := [0x000000000000000000000000000000000000000, 0x00000000000000000000000000000000000000000]
        }
        require(_a[0] == 0);
    }
}
