pragma solidity ^0.8.0;
contract Mutater4 {
    uint32 internal _value;
    receive() external payable {
        _value += 5;
    }
}
contract Caller {
    uint32 public _value;
    Mutater3 public mutant;
    Mutater4 public fallbackMutant;
    function () external payable {
        mutant();
        fallbackMutant();
        _value += 2;
    }
    function mutant() public {
        mutant.payable.transfer(address(this).balance);
    }
    function fallbackMutant() public {
        fallbackMutant.payable.transfer(address(this).balance);
    }
}

pragma solidity ^0.8.0;
contract Mutater5 {
    uint32 internal _value;
    receive() external payable {
        _value += 3;
    }
}
contract MutatedCaller {
    uint32 public _value;
    function () public payable {
        _value += 2;
    }
    function mutant() public payable {
        mutant.payable.call{value:100}("");
    }
}

pragma solidity ^0.8.0;
contract MutatedCaller2 {
    uint32 public _value;
    function () public payable {
        _value += 2;
    }
    function mutant() public payable {
        mutant.payable.call(abi.encode("Hello World"));
    }
}

pragma solidity ^0.8.0;
contract MutatedCaller3 {
    uint32 public _value;
    function () public payable {
        _value += 2;
    }
    function mutant() public payable {
        mutant.payable.call(abi.encodeWithSignature("receive()"));
    }
}
