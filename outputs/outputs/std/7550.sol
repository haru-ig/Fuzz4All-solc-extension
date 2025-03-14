pragma solidity ^0.8.0;
contract BetterCase5 {
    struct BetterCase5 {
        uint x;
    }

    function betterCase() public pure returns (BetterCase5 memory) {
    BetterCase5 memory x;
    x.x = (uint128(88888888888880794));
    return (x);
    }
}

pragma solidity ^0.8.0;
contract BetterCase6 {
    struct BetterCase6a {
        uint x;
    }
    struct BetterCase6b {
        uint x;
    }
    constructor(
        BetterCase6a memory x,
        BetterCase6b memory y
    )
    betterCase6b.x = y.x+x.x;
    }

    function betterCase6b() public pure returns (BetterCase6b memory) {
    BetterCase6b memory x;
    x.x = 2100;
    return (x);
    }
}
pragma solidity ^0.8.0;
contract BetterCase7 {
    struct BetterCase7 {
        uint x;
    }
    constructor(
        BetterCase7 memory x
    )
    betterCase7.x = x.x*5;
    }

    function betterCase7() public pure returns (BetterCase7 memory) {
    BetterCase7 memory x;
    x.x = 2301;
    return (x);
    }
}
