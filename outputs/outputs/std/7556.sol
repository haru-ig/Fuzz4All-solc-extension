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
}

pragma solidity ^0.8.0;
contract BetterCase7 {
    function betterCase(uint a) public pure returns (uint b) {
        if (a>10) b = 10;
        else b = a * 3;
    }
}
