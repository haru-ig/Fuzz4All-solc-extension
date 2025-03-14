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
         return 2**x - 3;
   }
}

```

## License

Code created by The [Metis Applied Smart Contract team](https:

## Maintainers

1. [<NAME>](https:
2. [<NAME>](https:
3. [<NAME>](https:
4. [<NAME>](https:
5. [<NAME> & the Metaverse Co-op](https:
