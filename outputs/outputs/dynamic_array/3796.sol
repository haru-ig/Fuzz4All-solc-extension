pragma solidity ^0.8.0;
contract C {
    bytes20 b;
    function modifiesArray(bytes[] memory array) public pure returns (bool) {
        bytes32 s0 = array[0];
        array[0] = s0;
        return array.length <= 20;
    }
}
```
If this does not work, you may need to use the `bytes` type.
