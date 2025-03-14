pragma solidity ^0.8.0;
contract Mutated {
    uint256 constant INITIAL_X = 42;
    uint256 private x;
    constructor() {
        x = INITIAL_X;
    }
    function mutatedFunction() mutates {
        x++;
    }
}

pragma solidity ^0.8.0;
contract Mutated {
    uint256 public constant INITIAL_X = 42;
    uint256 private x;
    constructor(uint _initialX) {
        x = _initialX;
    }
    function mutatedFunction() public {
        x += 1;
    }
}
