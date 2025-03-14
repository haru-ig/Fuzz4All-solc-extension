pragma solidity ^0.8.0;
contract Example5 is Example4 {
}
contract Example6 is Example5 {
}
contract Example7 {
    function fallback() payable {}
}
pragma solidity ^0.8.0;
contract Example8 is Example7 {
}

contract Example8PayableFallback {
    function fallback() external payable {}
}
```
