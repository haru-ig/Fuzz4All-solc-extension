pragma solidity ^0.8.0;
contract BetterCase4 {
    struct BetterCase4 {
        uint x;
    }
    function betterCase() public pure returns (BetterCase4 memory) {
        BetterCase4 memory x;
        x.x = 2*10;
        return (x);
    }
}
