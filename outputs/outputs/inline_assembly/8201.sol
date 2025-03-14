pragma solidity ^0.8.0;
contract V1Mutated {
    uint256 public a;
    uint128 public b;
    constructor () {
        b = b+10;
        a = a+1;
    }
    uint256 public c;

    function increase() public {

        c = c + 11;


        address(this).transfer(c);
    }
    function increaseAddress() public {
        address(0x7).transfer(a);
        address(0x8).transfer(b);
        address(0x9).transfer(c);
    }
}
```



## Example 4.1 - Dynamically Changing Contract Functionality
This example shows the use of a contract function as a call to a contract function. This works similarly to a delegate function, but is more powerful when applied to the inner functions of a contract. To use this method, assign a new contract, the contract will contain the function that you want to extend and update the inner functions of the contract.
```Solidity
pragma solidity ^0.8.0;
contract Mutated {
    uint internal x = 0;
    Mutated inner;
    constructor (Mutated c) {
        inner = c;
    }
    function increase() public returns (uint) {
        x = inner.x+11;
        return ++x;
    }
}
```
