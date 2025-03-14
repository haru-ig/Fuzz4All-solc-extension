pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample {
    function main() public pure {
        Immutable immutableObject;
        immutableObject.x = 5;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExampleAndCheck {
    function main() public pure {
        Immutable immutableObject;
        immutableObject.x = 5;
    }

    function test() public pure {
        Immutable immutableObject;
        immutableObject.x = 10;
        assembly {
            assert(x == 10)
        }
    }
}

pragma solidity ^0.7.6;
contract MutatedSemanticallyEquivalentAssemblyExample8 {
    function main() public pure {
        Immutable immutableObject;
        immutableObject.x = 5;
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample9 {
    function main() public pure {
        Immutable immutableObject;
        immutableObject.x = 5;
        assembly {
            if  (x == 5) {
                return(address(42));
            }
        }
    }
}


contract Tests {
  function test() public pure returns (bool) {
    return true;
  }
}
