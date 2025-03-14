pragma solidity ^0.8.0;
contract Mutated {
    constructor() public {}
    function mutated() public pure returns (uint256) { return 0; }
}

pragma solidity ^0.8.0;
contract Mutated {
    constructor() public {}
    function mutated() public view returns (uint256) { return mutated(); }
}
contract MutatedWithStorage {
    uint256 public data;
    constructor() public { data = 42; }
    function mutated() public { data = 7; }
}
