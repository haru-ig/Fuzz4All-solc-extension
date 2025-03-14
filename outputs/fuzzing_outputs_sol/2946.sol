pragma solidity ^0.8.0;
contract MutatedCaller2 {
    function pay_fallback() public payable {}
    function mut_fallback2() public {
    }
    function mut_fallback3() external {
    }
    fallback() payable external {
        emit MutCallerFallback2();
    }
    event MutCallerFallback2();
}
contract MutCallerStorage {
    function storage_init_fallback() public {
    }
    function mut_fallback() public {
    }
}
contract MutCallerStorage3 {
    uint256 public storedNumber;
    function mut_fallback() public {
    }
    fallback() payable external {
        emit MutCallerStorage3Fallback();
    }
    event MutCallerStorage3Fallback();
}
contract MutCallerStorage4 {
    uint256 public storedNumber;
    function mut_fallback() public {
    }
    fallback() payable external {
        storedNumber -= 1;
        emit MutCallerStorage4Fallback();
    }
    event MutCallerStorage4Fallback();
}
contract MutCallerStorage5 {
    uint256 public storedNumber;
    function mut_fallback() public {
    }
    fallback() payable external {
        storedNumber -= 1;
        storedNumber = 0;
        emit MutCallerStorage5Fallback();
    }
    event MutCallerStorage5Fallback();
}
contract MutCallerStorage6 {
    mapping (uint8 => uint16) public numbers;
    function mut_fallback() public {
    }
    fallback() payable external {
        numbers[1894] = 654;
        emit MutCallerStorage6Fallback();
    }
    event MutCallerStorage6Fallback();
}
contract MutCallerStorage7 {
    uint256 public storedNumber;
    uint256 public storedBytesValue;
    uint256 public storedArrayValue;
    uint8[] storedArrayValues;
    uint8[] public storedArrayBytesValues;
    uint256 internal storedArrayNonEmptyStored;
    function mut_fallback() public {
    }
    fallback() payable external {
        storedNumber = 32;
        storedBytesValue = 8853;
        storedArrayValue = 16;
        storedArrayValues[1] = 17;
        storedArrayBytesValues[1] = bytes("hello").length;
        storedArrayNonEmptyStored = storedArrayValue + 0xa;
        storedNumber = 32;
        storedBytesValue = 8853;
        storedArrayValue = 16;
        storedArrayValues[1] = 17;
        storedArrayBytesValues[1] = bytes("hello").length;
        storedArrayNonEmptyStored = storedArrayValue + 0xa;
    }
    event MutCallerStorage7Fallback();
}
