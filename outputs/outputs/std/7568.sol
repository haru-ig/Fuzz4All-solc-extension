pragma solidity ^0.8.0;
contract BetterCase7 {
    struct BetterCase7 {
        uint x;
    }
    function betterCase() public pure returns (BetterCase7 memory) {
        BetterCase7 memory x;
        x.x = 10*3/1;
        return (x);
    }
    function f(BetterCase7 memory b) public pure {
        b.x + 1;
    }
    function g(BetterCase7 b, BetterCase7 e) public pure {
    }
}
