pragma solidity ^0.8.0;
contract Caller {
    bytes11 fallbackFunc() receive() public payable {
    }

    bytes255 fallbackFunc2() receive() public payable {
    }

    bytes127 fallbackFunc3() public receive {
    }
}
```
