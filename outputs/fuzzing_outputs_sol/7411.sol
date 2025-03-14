pragma solidity ^0.8.0;
contract CallExample {
    uint8 public data;
    assembly {
        data := 100000
    }
    constructor() public {
        data = 0;
    }

    function set(uint8 _data) public {
        data = _data;
    }

    function get() public view returns (uint8) {
        return data;
    }
}
