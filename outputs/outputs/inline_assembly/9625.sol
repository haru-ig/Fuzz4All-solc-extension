pragma solidity ^0.8.0;
contract SemanticYulContract {
   uint internal contractCounter;
   function add() internal returns (uint) {
        contractCounter += 10;
        return contractCounter;
   }
   function subtract(uint x) internal pure returns (uint) {
        return x - 5;
    }
    function multiply(uint x) internal pure returns (uint) {
        return x + 3;
     }
     function divide(uint x) internal pure returns (uint) {
        return x - 2;
     }
      function power(uint x) internal pure returns (uint) {
      return 2**(x + 3.5);
    }
    }
```

## License

Please note that the original work from which this library was derived has been published under the terms of the [MIT license](https:

---
Written for [<NAME>](https:
