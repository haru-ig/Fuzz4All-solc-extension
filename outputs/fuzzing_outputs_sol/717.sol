pragma solidity ^0.8.0;
contract MutatedStorageReceiver {
    uint storedData;
    function setValue(uint input) public {
        storedData = input;
    }
    function getValue() public view returns (uint) {
        return storedData;
    }
    function setValue2(uint input) public {
        storedData = input;
    }
}

pragma solidity ^0.8.0;
contract MutatedStorageReceiverWithFallback {
    uint storedData;
    function setValue(uint input) public {
        storedData = input;
    }
    function getValue() public view returns (uint) {
        return storedData;
    }
    function setValue2(uint input) public {
        storedData = input;
    }
    function fallback() public payable {
        storedData = storedData + input;
    }
}
