pragma solidity ^0.8.0;
contract ReentrancyReceiver {
    uint value;
    address payable sender;
    function setValue(uint input) public {
        sender.transfer(input);
    }
    function getValue() public view returns (uint) {
        uint temp = value;
        return temp;
    }
}
contract ReentrancyCaller {
    ReentrancyReceiver reentrancy;
    function setValue(uint input) public {
        reentrancy.setValue(input);
    }
    function getValue() public view returns (uint) {

        reentrancy.getValue();
        value = reentrancy.getValue();
        return value;
    }
}
contract FallbackCaller {
    function fallback(uint) public pure {
    }
}
contract ComplexCaller {
    ComplexReceiver c;
    function setValue(uint input) public {
        c.setValue(input);
    }
    function getValue() public view returns (uint) {
        c.getValue();
        uint data = c.getValue();
        return data;
    }
}
contract ComplexReceiver {
    uint data;
    function setValue(uint input) public {
        data = input;
    }
    function getValue() public view returns (uint) {
        return data;
    }
}
contract InvalidFallbackCaller {
    function fallback(uint) public pure {
        c.setValue(0x41f);
    }
}
contract InvalidFallbackReceiver {
    uint data;
    function setValue(uint input) public {
        data = input;
    }
    function getValue() public view returns (uint) {
        data = c.getValue();
        return data;
    }
}
