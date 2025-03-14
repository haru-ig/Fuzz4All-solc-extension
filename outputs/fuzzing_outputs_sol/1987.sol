pragma solidity ^0.8.0;
contract Mutater3 {
    uint32 internal _value;
    function mutatedFunction() public {
        if (_value == 0) {
            _value = 1000;
        }
    }
    function receiveTransfer() public payable { }
}
contract Mutater2 {
    uint32 internal _value;
    function mutatedFunction() public {
        if (_value == 0) {
            _value = 1000;
        }
    }
    function receiveTransfer() public { }
}
contract Mutater1 {
    uint32 internal _value;
    function mutatedFunction() public {
        if (_value == 0) {
            _value = 1000;
        }
    }
    function receiveTransfer() public { }
}
contract Mutant {
    function mutatedFunctionMutant1() public {
        _value = 1000;
    }
    function mutatedFunctionMutant2() public {
        _value = 1000;
    }
    uint32 internal _value;
    function mutatedFunction() public {
        if (_value == 0) {
            _value = 1000;
        }
    }
    function receiveTransfer() public { }
}

pragma solidity ^0.8.0;
contract MutaterMutant {
    uint32 internal _value;
    function mutatedFucntionMutant1() public {
        _value = 1000;
    }
    function mutatedFucntionMutant2() public {
        _value = 1000;
    }
    uint32 internal _value;
    function mutatedFunction() public {
        if (_value == 0) {
            _value = 1000;
        }
    }
    fallback() external {
        mutatedFunction();
    }
    receiveTransfer() public { }
}
