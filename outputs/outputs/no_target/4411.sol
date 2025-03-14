pragma solidity ^0.8.0;
contract L {
    uint128 k = 1000000000000000;
    function m() public virtual pure {
        k = 2*k;
    }
}
contract L {
    uint128 k = 1000000000000000;
    function m() public pure virtual {
        k = 2*k;
    }
}

pragma solidity ^0.8.0;
contract L {
    uint128 k = 1000000000000000;
    function m() public pure returns (uint128) {
        return k;
    }
}
