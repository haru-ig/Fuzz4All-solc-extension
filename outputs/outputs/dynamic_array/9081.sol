pragma solidity ^0.8.0;
contract A {
    address _owner;
    uint _value;
    IAddressable _addr;

    constructor() public {
        _owner = msg.sender;
        _value = 0;
        _addr = IAddressable(address(this));
    }

    function changeOwner(address to) public {
        if (msg.sender == _owner) {
            _value = 0;
            _owner = to;
            _addr = IAddressable(_owner);
        }
    }
    function changeValue(uint256 value) public {
        if (msg.sender == _owner) {
            _value = value;
            _addr = IAddressable(_owner);
        }
    }

    function set(address to, uint256 value) public {
        changeOwner(to);
        changeValue(value);
    }

    function get() public constant returns (uint) {
      return _value;
    }

    function change(uint256 value) public {
        return add(value);
    }

    function add(uint256 value) public returns (uint) {
      return _value+value;
    }

    function owner() public constant returns (address) {
      return _owner;
    }

    function addr() public constant returns (address) {
      return IAddressable(_owner).addr();
    }
}
