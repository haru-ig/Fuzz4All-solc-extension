pragma solidity ^0.8.0;
library UintWrapperWithChange {
    uint constant X = 1;
    function x() pure public returns (uint) {
        return X++;
    }
}

pragma solidity ^0.8.0;
contract Multiplicitive {
    uint constant a = 42;
    modifier x() {
        throw;
    }
    function multiplicitive(uint n) public pure returns (uint) {
        return n * a;
    }
    function twoMultiplicitive() public pure returns (uint) {
        return multiplicitive(2);
    }
}

pragma solidity ^0.8.0;
contract Printer {
    function print(uint x) public pure {
        Console.log(x);
    }
}

pragma solidity ^0.8.5;
contract Test {
  function print(uint x) public pure {
    Console.log(x);
  }
  function test() public view {
    print(2 * Multiplicitive.twoMultiplicitive());
  }
}
