pragma solidity ^0.8.0;
contract Incrementer2 {
    uint public count;
    constructor() public {
        increment_internal();
    }
    function increment() public pure {
        count += 1;
        increment_internal();
    }
    function increment_internal() private pure {
        count += 1;
    }
    function update() public pure {
        count += 1;
    }
}
```
