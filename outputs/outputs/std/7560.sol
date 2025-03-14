pragma solidity ^0.8.0;
contract BetterCase7 {
    struct BetterCase7 {
        uint x;
    }
    function betterCase() public pure returns (BetterCase7 memory) {
        BetterCase7 memory x;
        x.x = 100;
        x.x = x.x;
        x.x = x.x;
        return (x);
    }
    function f(BetterCase7 memory b) public pure {
        b.x = 100;
    }
}

pragma solidity ^0.8.0;
contract BetterCase8 {
    struct BetterCase8 {
        uint x;
    }
    function betterCase() public pure returns (BetterCase8 memory) {
        BetterCase8 memory x;
        x.x = x.x;
        x.x = x.x;
        x.x = x.x;
        uint[] memory a = new uint[](2);
        a[0] = 1;
        a[1] = 1;
        a[2] = 1;
        x.x = a[2];
        return (x);
    }
    function f(BetterCase8 memory b) public pure {
        b.x = b.x;
        b.x = b.x;
        b.x = b.x;
    }
}
