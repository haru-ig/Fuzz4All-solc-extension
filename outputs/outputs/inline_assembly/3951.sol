pragma solidity ^0.8.0;

contract SemanticallyEquivalent28 {
  function foo(uint8 x, uint8 y) public pure {
    assembly { revert("bar", and(x, or(y, sub(x, y)))) }
  }
}
contract SemanticallyEquivalent29 {
  function foo(uint8 x, uint8 y) public pure {
    assembly { revert("bar", xor(x, y)) }
  }
}

pragma solidity 0.8.4;
contract SemanticallyEquivalent30 {
  function foo(uint8 x, uint8 y) public pure {
    assembly { revert(add(add(x, y), gt(x, y)))) }
  }
}


```

* `pragma solidity >=0.7.0;`: If you want to make sure to use version 7 or higher of Solidity.
* `pragma solidity ^0.7.0;`: If you want to make sure to use version 7 or lower of Solidity.
* `pragma solidity ^0.7.7;`: If you want to make sure to use version 7.7 or higher of Solidity.

## Further Reading

More information about Solidity's inline assembly feature can be found [here](https://docs.soliditylang.org/en/v0.8.0/assembly.html) and [here.](https://hackernoon.com/solidity-assembly-in-6-steps-1994529e2e0b)

If you don't want to learn assembly, please skip to the next section.

## Next Steps

- [Learn Solidity]({{ site.baseurl }}/learn/1-basics)
