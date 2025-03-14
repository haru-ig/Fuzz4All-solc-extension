pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_8{
    address[] public array;
    function test() public pure returns (bool) {
        return true;
    }
}

interface IAbiEquivalence
{
    bytes memory value;
}

contract SemanticEquivalence_Arrays_2{

    mapping(uint256 => IAbiEquivalence) public immutable EQUIVALENCES;
    mapping(uint256 => address) public immutable array1;

    constructor() public{
        EQUIVALENCES.insert(0x40, abi.encode(KECCAK256(abi.encodePacked("AAAAAAAAAAAAAAAAAAAAAAAA"))));
    }
}
```
