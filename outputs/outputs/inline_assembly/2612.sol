pragma solidity ^0.8.0;
contract c {
    uint i = 1;
    uint result;
    uint public z = 0;
    bool isCorrect = i == z;
    constructor() public {
        result = 10;
        result = result / 2;
        isCorrect = isCorrect;
    }
}
pragma solidity ^0.8.0;
contract C {
    bytes3 hash1;
    bytes3 _hash2;
    constructor() public {
        hash1 = 0xEFCDAB89;
        _hash2 = hash1;
    }
    uint256 public x;
    constructor(uint256 _x) public {
        x = _x;
    }
}
