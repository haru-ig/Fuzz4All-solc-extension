pragma solidity ^0.8.0;
contract SimpleContract {
function increment() public {
    address to = msg.sender;
assembly {
to := to + 1
}
}
}
```
