pragma solidity ^0.8.0;
mutating contract MutateExample {
    uint8 public data;
    constructor() {
        data = 0xFF;
    }
    function set(uint8 _data) public {
        data = _data;
    }
    function get() public view returns (uint8) {
        return data;
    }
}
address public ownerAddress;
uint8 public ownerData;
constructor()  {
    ownerAddress = msg.sender;
    ownerData = 0xFF;
}

contract MutateExample {
    uint8 public data;
    constructor() {
        ownerAddress = msg.sender;
    }
    function set(uint8 _data) public returns (bool success) {
        data = _data;
        return true;
    }
    function get() public view returns (uint8) {
        return data;
    }
}

contract FallbackExample {


    function() payable {
        require(msg.sender == ownerAddress, "Fallback: Sender doesn't match");
        ownerData = data;
        ownerAddress.transfer(msg.value);
    }
}

contract Caller {
    uint8 public data;
    uint256 public value;
    uint8 public value2;
    constructor(uint8 _data) {
        data = _data;
    }
    function set(uint8 _value) public returns (bool success) {
        value = _value;
        return true;
    }
    function get() public view returns (uint8) {
        return value;
    }
}


contract MutateExampleCall {
    uint8 public data;
    constructor() {
        data = 0xFF;
    }
    function set(uint8 _data) public {
        data = _data;
    }
    function get() public view returns (uint8) {
        return data;
    }
}

contract Caller {
    uint8 public data;
    uint256 public value;
    uint8 public value2;
    constructor(uint8 _data) {
        data = 0xFF;
    }
    function set(uint8 _value) public returns (bool success) {
        value = _value;
        return true;
    }
    function get() public view returns (uint8) {
        return value;
    }
    function setData(uint8 _data) public returns (bool success) {
        data = _data
