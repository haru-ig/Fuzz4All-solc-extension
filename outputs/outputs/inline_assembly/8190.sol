pragma solidity ^0.8.0;
contract Mutated {
    uint256 public a;
    constructor(uint256 _a) public {
        a = a+1;
        a = a+4;
    }
}

pragma solidity ^0.8.0;
contract Mutated {
    uint256 public a;
    constructor(uint256 _a) public {
        a = a+1;

    }
}
