pragma solidity ^0.8.0;
contract Example {
    IERC20 public token;

    function getToken() public {

        token = IERC20(0x1F63A8f2949c60bF27c7e5d1c924807829862Bdf);

        _;
    }
}
```
