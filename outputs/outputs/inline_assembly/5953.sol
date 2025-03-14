pragma solidity ^0.8.0;

pragma experimental "ABIEncoderV2";


contract Example {
    contract Bogus {
        mapping (uint32 => string) internal _names;

        string public name;

        constructor(string memory) {
            _name();
    }

    function _name() internal returns (uint32) {
        name = _names[msg.sender];
        _names[msg.sender] = name;
        return (uint32(name.length));
    }

    function getName() public view returns (string memory) {
        return name;
    }
}
