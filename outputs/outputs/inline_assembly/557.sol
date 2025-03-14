pragma solidity ^0.8.0;
contract InlineAssemblyMutated {
    bytes32 public testStorage;
    mapping(bytes32 => address) public testMapping;

    bytes32[] public testArray;
    address public testAddress;

    bytes32 inline_asm_storage_read() public pure returns(bytes32 x) {
        assembly {
            let x := mload(0)
            mstore(0, 1)
            x := x1
        }
        return x;
    }
    function testMethod() public pure returns(address y) {
        bytes32 x;
        y = testMapping[inline_asm_storage_read()];
        return y;
    }
}
```
