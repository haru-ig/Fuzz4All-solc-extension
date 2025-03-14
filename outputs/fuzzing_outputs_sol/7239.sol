pragma solidity ^0.8.0;
contract Value {
    uint public x;
    function example5() public {
        return payable(address(this));
    }
    receive() external {
        x += 42;
    }
}
contract Fallback {
    function fallback() external payable {
        return msg.sender;
    }

}
contract ContractWithoutFallback {
     fallback() public ;
    receive() external payable { }
}
```
