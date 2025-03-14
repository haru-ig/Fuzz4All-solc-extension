pragma solidity ^0.8.0;
contract Bar {
    fallback() external payable {
        bar();
    }
    function bar() public pure {
        uint _x;
        _x = x();
        x();
    }
    fallback () external pure {
        return ;
    }
}

```
