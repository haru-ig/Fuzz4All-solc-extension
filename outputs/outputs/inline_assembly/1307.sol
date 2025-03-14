pragma solidity ^0.8.0;
contract Mutant4b
{
  uint b;
  uint h;
  bool m;
  uint a;
  constructor() public {
    (a,) = (0, 0, true);
  }
  receive() external payable {}
}
```
# [4d](#4d-example-4) <a name="4d-example-4"></a>

This example is a variation of 1.

## [5](#5-instructions) <a name="5-instructions"></a>
```Solidity
pragma solidity ^0.8.0;
contract Mutant5
{
    function b() public pure {
        return 5;
    }
    function h() public pure {
        return 7;
    }
    function m() public pure {
        return true;
    }
    receive() external payable {}
}
```

## [6](#4-contract-syntax) <a name="4-contract-syntax"></a>

In the past, Solidity’s syntax for functions and libraries wasn’t well defined because it was considered a black box. This can be a pain for libraries because the names of the contracts, functions and variables can be changed before they are compiled. The `receive` keyword causes the contract to get all messages that are sent from the Ethereum wallet (the user) into the contract.

To solve this, Solidity’s keyword syntax was expanded with a formal language that includes this keyword and other keywords. Functions and libraries have been identified with a formal name to make it easier to understand the syntax.

## [7](#5-instructions) <a name="5-instructions"></a>
```Solidity

contract Contract {

    function f() public pure {
        return 1;
    }



    modifier modifierFunction(
        uint _arg
    ) {
        return 2;
    }






}
