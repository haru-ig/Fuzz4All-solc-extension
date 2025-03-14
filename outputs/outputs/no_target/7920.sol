pragma solidity ^0.8.0;
contract TestMutator {
    uint256 x;
    constructor () public {
        x = 0xdeadbeef;
    }
    function set(uint256 _value) public {

        uint256 _value2 = x;
        address _address = 0xdeadbeef;
        uint256 _uint256 = 0xdeadbeef;

        x = ((_value1 >= _uint256)? _value1 : _uint256);
        x = ((_value1 >= _uint256 + 1)? _value1 : _value2);
    }
    function set2(uint256 _value) public {
        address _address = 0xdeadbeef;
        uint256 _uint256 = 0xffffffff;

        x = ((_value1 >= _uint256)? _value1 : _uint256);
        x = ((_value1 >= _uint256 + 1)? _value1 : _value2);
    }
}
