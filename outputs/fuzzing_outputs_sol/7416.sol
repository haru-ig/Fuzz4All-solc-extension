pragma solidity ^0.8.0;
contract CallExample {
    uint8 public data;
    function set(uint8 _data) public {
        data = _data;
    }
    function methodCalled(uint8 _number) public pure returns (uint8) {
        return _number + data;
    }
    function get() public view returns (uint8) {
        return data;
    }
}
