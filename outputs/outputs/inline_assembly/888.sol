pragma solidity ^0.8.0;
contract Mutator {
    uint256 internal a = 0;
    uint256 internal b ;
    uint256 public newBalanceOf ;
    constructor() public {
        a = 42;
        a = 0;
        internalVar = 43;
        internalVar = 0;
    }
    function stop() public {
        a = 42;
        a = 0;
        internalVar = 43;
        internalVar = 0;
    }
    function increment_AandB() public returns(uint256) {
        a = a+b+1;
        b = b+1;
        newBalanceOf = a + b;
        return a + b;
    }
    function get_balance_of_msg_sender() public returns(uint) {
        return balanceOf[msg.sender];
    }
    function get_new_balance_of_msg_sender() public returns(uint256) {
        return newBalanceOf[msg.sender];
    }
 }
```

</details>
