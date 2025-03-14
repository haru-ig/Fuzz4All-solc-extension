pragma solidity ^0.8.0;
address owner;
address spender1;
address spender2;
address spender3;
uint constant max = 2**256 - 2;
uint constant constant1 = 42;
contract Mutant {
    void callSpender() public {
        require(msg.sender!= address(0), "Mutant_old: Invalid call");
        owner.transfer(0);
    }
    function callSpenderFrom(address who) public {
        callSpender();
        if (who!= 0x12345678) owner.transfer(0);
    }
    function callSpenderFromNonMatchingAddress(address who) public {
        callSpender();
        if (who!= owner) contract owner.transfer(0);
    }
    fallback() public {
        callSpender();
    }
}
```
