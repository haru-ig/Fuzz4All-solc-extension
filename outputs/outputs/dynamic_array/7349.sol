pragma solidity ^0.8.0;
contract Test {
    mapping(bytes32 => uint32[2]) public dynArr;
    function returnsValue() public pure returns(uint32) {
        return dynArr[keccak256(abi.encodePacked(1,2))];
    }
}
```

## Summary

Dynamic arrays have emerged as an addition to Solidity's built-in data structures. They are extremely flexible in working with, creating, manipulating, and managing data structures with complex elements.
