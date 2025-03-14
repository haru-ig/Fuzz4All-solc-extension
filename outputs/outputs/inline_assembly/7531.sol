pragma solidity ^0.8.0;
contract Example {
    mapping(uint => uint) myMap;
    constructor() {
        myMap[1] = 1;
    }
    function get(uint x) view public returns (uint) {
        return myMap[x];
    }
    function test(uint x) public {
        uint _z = x;
        z = x;
        require(_z <= x, "Invalid input");
    }
}
```
