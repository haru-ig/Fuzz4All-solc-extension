pragma solidity ^0.8.0;
contract MutatedStorage7 {
    function use() public {
        num += 1;
    }
    uint num = 0;
}
contract MutatedStorage8 {
    uint public num;
    constructor() public {
        num = 0;
    }
    function changeNumber(uint _number) public returns (bool) {
        num = _number + 1;
        return true;
    }
    function addZeroTwo() public {
        num += 2;
    }
    function use() public {
        changeNumber(num);
        num++;
        changeNumber(num);
    }
}
```
