pragma solidity ^0.8.0;
contract MutatedExamples3b {
    function getUint16WithRevert() public pure returns (uint16) {
        uint16 x = 0;
        x += 100;
        uint16 result = 1;
        assert(result == 1);
        return 14;
    }
    function mutate() public returns (uint16) {
        return getUint16WithRevert() + 50;
    }
}
