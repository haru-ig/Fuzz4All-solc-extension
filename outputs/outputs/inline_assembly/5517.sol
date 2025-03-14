pragma solidity ^0.8.0;
import "./ImmutableBc6.sol";
contract ImmutableBc7 is ImmutableBc6 {
    uint public variableB = 0;
    function test() public view returns (uint[1] memory) {
        uint[1] memory var1;
        var1;
        return var1;
    }
}
