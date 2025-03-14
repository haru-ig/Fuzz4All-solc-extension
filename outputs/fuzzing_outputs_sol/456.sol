pragma solidity ^0.8.0;
contract MutatedCaller2 {}
pragma solidity >= 0.6 <0.9;
contract Caller2 {
    receive() external payable {}
}
pragma solidity ^0.8.13;
contract MutatedCaller1 {
  receive() external payable {}
}
pragma solidity >= 0.6 <0.9;
contract Caller1 {
    receive() external payable {}
}
```
