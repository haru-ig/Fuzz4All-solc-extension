pragma solidity ^0.8.0;
contract Mutated {
    function mutated() public pure returns (uint) {
        return 100;
    }
}

pragma solidity ^0.8.0;
contract FallbackMutated {
    contract MutatedFallback {
        function mutated() public pure returns (uint) {
            return 100;
        }
    }
    contract Mutated {
        MutatedFallback public fallback;
    }
    Mutated public x;
}
contract FallbackMutated {
    contract MutatedFallback {
        function mutated() public pure returns (uint) {
            return 100;
        }
    }
    contract Mutated {
        MutatedFallback public fallback;
    }
    Mutated public x;
}
contract FallbackMutated {
    contract MutatedFallback {
        function mutated() public pure returns (uint) {
            return 100;
        }
    }
    contract Mutated {
        MutatedFallback public fallback;
        function Mutated() {
          fallback = new MutatedFallback();
        }
    }

    Mutated a;
}
contract FallbackMutated {

    contract Mutated {
        Mutated public fallback;
        function Mutated() {
          fallback = new MutatedFallback();
        }
    }
    Mutated a;
}

pragma solidity ^0.8.0;
contract Caller {
  Mutated public p;
}

pragma solidity ^0.8.0;
contract Caller {
  Mutated public p;
}

contract Caller { Mutated public p; }
