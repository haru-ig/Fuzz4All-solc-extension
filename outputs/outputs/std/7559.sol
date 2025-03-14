pragma solidity ^0.8.0;
contract BetterCase6 {
    struct BetterCase6 {
        uint x;
    }
    function betterCase() public pure returns (BetterCase6 memory) {
        BetterCase6 memory x;
        x.x = 10*3/1;
        return (x);
    }
    function f(BetterCase6 memory b) public pure {
        b.x = 10*3/1;
    }
}
