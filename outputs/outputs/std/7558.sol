pragma solidity ^0.8.0;
contract BetterCase6 {
    struct BetterCase6 {
        bytes32 x;
    }
    function betterCase() public pure returns (BetterCase6 memory) {
        BetterCase6 memory x;
        x.x = 0x1234123412341234123412341;
        return (x);
    }
}
