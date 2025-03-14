pragma solidity ^0.8.0;
contract BetterCase6 {
    struct BetterCase6(uint x) {

    }
    function betterCase6() public view returns (BetterCase6 memory) {
        return (BetterCase6(10*3/1));
    }
}

pragma solidity ^0.8.0;
contract BetterCase7 {
    struct BetterCase7 {
        bool x;
    }
    modifier good() {
        return (true);
    }
    function betterCase7() public pure good returns (BetterCase7 memory) {
        BetterCase7 memory x;
        x.x = true;
        return (x);
    }
}
