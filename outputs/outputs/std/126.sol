pragma solidity ^0.8.0;
abstract contract Mutate {
    constructor(bytes32 salt_) {
        _;
    }

    function max_int(uint x, uint u) private pure returns (uint) {
        if (x == u) { return x; }
        if (x < u) { return x; }
        return u;
    }

    modifier max_int(uint u) { bool x;
        uint x; x := x;
        require((!x || (x = max_int(x, u)) == u), "max_int failed");
        _;
    }
}
