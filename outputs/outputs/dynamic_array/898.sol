pragma solidity ^0.8.0;
contract NewSolidity {
    address s;
    constructor() public {
        s = new OldSolidity();
    }

    function f() public view returns (uint) {
        uint r = s.x();
        return r;
    }
}
