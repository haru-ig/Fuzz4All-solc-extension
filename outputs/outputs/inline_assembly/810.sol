pragma solidity ^0.8.0;
contract Mutator {
uint _counter = 0;
function Increment(uint a, uint b) public {
        if (b == 0) {
          a = 0;
          _counter = 0;
        } else {
          _counter += 1;
        }
    }
}
```

<br>


<H2>What are variables?</H2>

Variables are a powerful feature of Solidity. They represent the value or state of information. They allow the user of your smart contract to modify it with an optimized code to execute exactly the same result.

For example, imagine now we have a contract which stores a person’s name. We now want to ensure that the user doesn't overwrite their name after a purchase. We can put a check in place that will make sure that their name isn’t overwritten.

To do this, we can use a variable. When the first name is written, its value will be set to the second name. We can then check to see if their names are the same. (This is similar to how we can compare two string literals in C and Java.)

In Solidity, variable declaration is handled through the keyword var, and variable access is done using the name assigned after the keyword var. This means that our code looks something similar to:

```solidity
pragma solidity ^0.8.0;

contract Mutator {
    uint _counter;
    uint internal FirstName;
    modifer onlyIncrement {
      _counter ++;
      _;
    }
    function Increment(string memory FirstName) public onlyIncrement {
        if (FirstName.length == 0) {
          FirstName = "0x0";
          _counter = 0;
        } else {
          FirstName = bytesToAddress(uint256(keccak256(bytes(FirstName))));
          _counter += 1;
        }
    }
}
```
However, for this example, we’d just like to make sure that if the user types a blank string (ie <NAME>), it will overwrite their name. Since Solidity has a check which will make sure that the name isn’t overwritten, we can use this for our example to achieve this behavior:

```solidity
pragma solidity ^0.8.0;

contract Mutator {
    uint _counter = 0;
    uint internal FirstName;
    modifier onlyIncrement {
      _counter ++;
      _;
    }
    function Increment(string memory FirstName) public onlyIncrement {
        if (FirstName.length == 0) {
