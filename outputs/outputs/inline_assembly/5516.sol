pragma solidity ^0.8.0;
contract ImmutableBc7 {
    uint public immutable variableA = 0;
    function test() public view returns (uint[1] memory) {
        uint[1] memory var1;
        var1;
        return var1;
    }
}
