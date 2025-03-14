pragma solidity ^0.8.0;
contract G {
    uint private constant value = 1;
    uint public constant b = 128;
    uint constant constantMax = 2**128-1;
}
contract H {
    uint private constant value = 1;
    uint constant constantMax = 1-1;
}

pragma solidity ^0.8.0;
contract G {
    uint constant value = 1;
    uint public constant b = 128;
    uint constant constantMax = 2**128-1;
}
contract H {
    uint constant value = 1;
    uint constant constantMax = 1-1;
}
```
