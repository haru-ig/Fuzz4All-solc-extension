pragma solidity ^0.8.0;
contract DifferingAbiMutations_v2 {
    constructor() public {
    }
    function test (uint256) public {
    }
}
contract EquivalentAbiMutations_v23 {
    uint160 public value;
    uint32 public value2;
    uint256 public value3;
    uint256 public value0;
    function test (uint256) public {
    }
}

contract Test {
    function test (uint256) public {

    }
}
