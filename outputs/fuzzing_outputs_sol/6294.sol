pragma solidity ^0.8.0;
contract Equivalent {

    fallback mutantFunction() external;
}
pragma solidity ^0.8.0;

contract Caller is Equivalent {
    function direct() public { call(); }
    function call() public payable { }
}
```

<br />

---
