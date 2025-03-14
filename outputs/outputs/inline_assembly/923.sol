pragma solidity ^0.8.0;
contract Incrementer {
    uint private _increment = 2;
    uint public increment_internal() public pure returns(uint) {
      return _increment++;
    }
    uint public increment() public pure returns(uint) {
      return _increment;
    }
}
```

As you can see, `increment_internal()` increments the value of `state` by one and returns the updated value. `increment()` increments the value of `state` by one but returns the previous value of `state`. While this works, in a real world scenario, it could result in unexpected side effects, especially in situations where the underlying EVM does not behave as expected. Remember to validate the previous value and the new or expected values before making changes. In general, avoid using inline assembly if you absolutely must.
