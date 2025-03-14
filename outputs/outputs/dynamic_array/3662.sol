pragma solidity ^0.8.0;
contract E {
    struct S {
        uint256 a;
        uint256 b;
    }
    function g() public {
        S storage s = new S(1, true);
        (uint256[] memory temp, ) = s.a.toArray();
    }
    constructor() {}
}
