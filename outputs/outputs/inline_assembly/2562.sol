pragma solidity ^0.8.0;
contract Mutated {
    Comp7 public comp7;
    uint256 public _internalStorage;
    constructor(Comp7 selfComp7) {
        comp7 = selfComp7;
        _internalStorage = comp7.__Comp7_init();
    }
    function add(uint256 _b) internal {
        comp7.add(_b);
    }
}
