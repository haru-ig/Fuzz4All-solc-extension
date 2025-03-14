pragma solidity ^0.8.0;
contract CallExample {
    address public contractCaller;
    address public contractReceiving;
    uint256 public data;
    uint8 public storedData;

    function set(uint256 _data) public {
        storedData = _data;
    }

    function add(uint8 _data) public returns (uint8) {
        return storedData + _data;
    }

    receive() external payable {
        contractCaller = msg.sender;
    }

    fallback() external view returns (uint256) {
        return storedData;
    }

    receive() external payable {
        data = msg.value;
        contractReceiving = caller;
    }
}
