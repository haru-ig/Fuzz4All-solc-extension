pragma solidity ^0.8.0;
contract Caller {
    event LogMessage(string msg);
    mapping(address => uint) public balance;
    mapping(address => uint) public amount;
    function _fallback() internal returns (uint) {
        uint x = msg.value;
        address addr = msg.sender;
        balance[addr] += x;
        emit LogMessage("This Ether should be passed to Contract.fallback()");
        return x;
    }
}
```

![](../../../images/solidity/fallback.png)

## Fallback-function in Pseudocode

This diagram shows how the fallback logic works in pseudocode.

<!-- https:

```solidity
pragma solidity ^0.6.12;

contract EtherFallback {
    fallback () external payable {}
}
```

![](../../../images/solidity/fallback-implementation.png)

## Reference

<https:

<https:

https:

https:

https:
