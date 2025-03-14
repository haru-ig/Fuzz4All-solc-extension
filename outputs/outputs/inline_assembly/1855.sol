pragma solidity ^0.8.0;
contract mutatedY is mutatedX {
    function func() public {
        x *= 2;
    }
    function func2() public {
        x = x%2 + 1;
    }
}

pragma solidity ^0.8.0;
contract mutatedZ is mutatedX {
    function func1() public {

        x /= 2;
    }
    function func2() public {

        x = x - uint256(address(this).balance*2);
    }
    function func3() public {

        x += 42;
    }
}
```
