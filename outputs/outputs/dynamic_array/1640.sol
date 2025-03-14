pragma solidity ^0.8.0;
contract Semantics {
    uint256[] public x;
    function append(uint256 _arr) public {
        x.push(_arr);
    }
    function set(uint256 _i,uint256 _arr) public {
        x[_i] = _arr;
    }
}

```
