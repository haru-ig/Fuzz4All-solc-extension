pragma solidity ^0.8.0;
contract BetterCase5 is BetterCase6 {
    function betterCase() public pure returns (BetterCase6 memory) {
        super.betterCase();
        return super.betterCase();
    }
    function f(BetterCase6 memory b) public pure {
        super.x = b.x;
    }
}
