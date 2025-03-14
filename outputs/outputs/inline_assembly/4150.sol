pragma solidity ^0.8.0;
contract Compat : Mutators {
    function test () public {
        assembly {
            test()
        }
    }
    function test_3 () public {
        assembly {
            test()
            test()
        }
    }
}

pragma solidity ^0.8.0;
contract ComplexMutators {
    uint161 public _balance;
    uint161 constant _max = uint161(1e32);
    uint public _minted;
    uint public _burned;
    bytes3 public NAME = "Solidity";
    bytes3 public VERSION = keccak256("1.0");
    bytes3 public AGGREGATOR = hex"9D28360a99D82Aba64A6b980091F7458F42922BE";

    constructor(address _aggregator) public {


        _balance = 0;
        _minted = 0;
        _burned = 0;
    }
}

```
