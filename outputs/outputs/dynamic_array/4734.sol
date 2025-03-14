pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint256) public map;
    function MutateData() public {
         map[15] = 99;
    }
}
```
