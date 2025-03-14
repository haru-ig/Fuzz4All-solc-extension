pragma solidity ^0.8.0;
contract TestMutatedFallbackCallerWithPayableModifier {
    uint internal x = 230;
    receive() external payable {
        x = 13;
    }

    function test() public pure {
        assert(x == 230);
    }
}
