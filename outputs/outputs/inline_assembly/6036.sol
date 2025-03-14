pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample8 {
    function main() public pure {
        uint256[5] memory values;
        values[2] = 1223;
    }
}
```
In both examples the `uint256` array created by the first example is modified by the second one, and so forth. This is a very efficient way to modify data. Note that modifying data is not always an option.

As an example, consider one which involves an array of `uint8`s:
```javascript
pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample9 {
    function main() public pure {
        uint8[13] memory values;
        values[9] = 12;
    }
}
