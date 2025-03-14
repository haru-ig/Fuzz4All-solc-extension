pragma solidity ^0.8.0;
contract Mutated {
    uint256 x;
    constructor() public {
        x = 0;
        x;
    }
    function mutation() public pure { }
}
contract All {
    uint256 z;
    constructor() public {
        z = 1;
        z;
    }
    function mutation() public pure { }
}
