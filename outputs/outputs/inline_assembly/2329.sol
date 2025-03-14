pragma solidity ^0.8.0;
contract C
{
    uint a;
    uint b;
    constructor() {
        a = 10;
        b = 2;
    }
    function setB(uint x) public {
        b = x;
    }
    function multiply() public {
        uint x = a;
        a = a * b;
        b = b * x;
    }
}
```

1.	Program.sol:
```solidity
pragma solidity ^0.8.0;
contract Computation
{
    uint public a;
    uint public b;
    constructor() {
        a = 10;
        b = 2;
    }
    function setA(uint x) public {
        a = x;
    }
    function setB(uint x) public {
        b = x;
    }
    function multiply() public {
        uint x = a;
        a = a * b;
        b = b * x;
    }
}
```
<!--/div-->
<!--div class="col-md-3"-->
## Reference

1. <a href ="https://docs.soliditylang.org">Solidity</a>
1. <a href ="https://ethereum.readthedocs.io/en/v5.1/developers/contracts/_assembly_language.html">Inline assembly</a>
1. <a href ="https://docs.soliditylang.io/en/v0.8.12/language-reference.html#assembly-specification">Assembly specification</a>
<!--/div-->
