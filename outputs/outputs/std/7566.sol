pragma solidity ^0.8.0;
contract BetterCase6 {
    struct BetterCase6 {
        uint x;
    }
    function betterCase() public pure returns (BetterCase6 memory) {
        BetterCase6 memory x;
        x.x = 10 + 3/1;
        return (x);
    }
    function f(BetterCase6 memory b) public pure {
        b.x + 1;
    }
}

pragma solidity ^0.8.0;
contract BetterCase5 {
    struct BetterCase5 {
        uint x;
    }
    function betterCase() public pure returns (BetterCase5 memory) {
        BetterCase5 memory x;
        x.x = 10 + 3 + 1/1;
        return (x);
    }
    function f(BetterCase5 memory b) public pure {
        b.x + 1;
    }
}

pragma solidity ^0.8.0;
contract BetterCase4 {
    struct BetterCase5 {
        uint x;
    }
    function betterCase() public pure returns (BetterCase4 memory) {
        BetterCase4 memory x;
        x.x = 10 + 3 + 1;
        return (x);
    }
    function f(BetterCase4 memory b) public pure {
        b.x + 1;
    }
}
