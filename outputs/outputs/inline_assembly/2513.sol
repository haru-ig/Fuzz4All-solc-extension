pragma solidity ^0.8.0;
contract Comp2 {
    uint256 public _a;

    constructor(uint32 _b) {
        _a = _b + 1;
    }

    function increase() public {
        _a++;
    }
}


pragma solidity ^0.8.0;
contract Comp1 {
    uint256 public _a;

    constructor(uint32 _b) {
        _a = _b + 1;
    }

    function decrease() public {
        _a--;
    }
}
