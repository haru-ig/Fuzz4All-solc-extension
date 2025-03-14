pragma solidity ^0.8.0;


contract MyContract {
    bytes32 public constant DATA_KEY = "myData";
    mapping(address => uint) public myData;
    MyData public myDataInstance;
    MyData public myDataWithOverflow;

    modifier onlySetterWithOverflow() {
        if (myDataWithOverflow.bbb.length == 7)
            revert();
        _;
    }
    function MyContract() {
        uint8[8] memory data;
        data[0] = 79;
        _setElement(address(myData), DATA_KEY, data);
    }
    function _setElement(contract addr, bytes32 _name, uint8[3] memory _value) private {
        uint len = 3 + _value.length;
        uint[8] memory data = new uint[](len);
        data[0] = len;
        data[1] = addr;
        data[2] = _name;
        data[3..len] = _value;
        _setElements(_value.length, addr, _name, data);
    }

    function _setElements(uint size, contract addr, bytes32 _name, uint8[8] memory data) private {
        uint[8] storage _storage = myData[addr];
        uint start = _storage.length;
        uint end = start + size;
        require(start <= end);
        _storage.length = end;
        for (uint i = start; i < end; i++) {
            _storage.write(0, bytes32(i));
            uint8 value = 0u + uint8(i);
            _storage.write(8, bytes32(value));
            _storage.write(16, bytes32(value));
            _storage.write(24, bytes32(value));
            _storage.write(32, bytes32(value));
            _storage.write(40, bytes32(value));
            _storage.write(48, bytes32(value));
            _storage.write(56, bytes32(value));
            _storage.write(64, bytes32(value));
            _storage.write(72, bytes32(value));
        }
    }
    function getMyDataWithOverflow() public view returns (uint[7] memory) {
        return myDataWithOverflow.bbb;
    }
}
