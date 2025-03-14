pragma solidity ^0.8.0;
contract modifierB{
    function f() public {
        (bool b) = (10 > 9);
        if(b) f();
    }
}
```
2.10050011
```solidity
pragma solidity ^0.8.0;
contract Test{
    modifierB f(string memory str) internal pure {
        (bool b) = (10 > 9);
        if(b) f("Failed");
        else str = "1";
    }
    function test() public pure {
        string memory str;
        (bool b) = (10 > 9);
        if(b) f(str)
    }
}
