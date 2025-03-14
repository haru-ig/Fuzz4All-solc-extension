pragma solidity ^0.8.0;
contract S13Mutated13 {
    uint8 a = 120;
    function change() public returns(uint8[] memory) {
        a = 55;
        return [a];
    }
    function change2() public returns(uint8 b) {
        a *= 0;
        return a;
    }
}
