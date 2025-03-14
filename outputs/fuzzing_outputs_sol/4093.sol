pragma solidity ^0.8.0;
contract Contract {
  function test(address) {}
  receive() external payable {}
}


contract FallbackReceiver {
  contract Caller is Contract {
    receive() external payable {}
  }
}
```

</details>

## [4.2.22](4222/README.md)

<details style="color: #005050">
