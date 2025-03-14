pragma solidity ^0.8.0;
contract Test10 {
    bytes32[] _name;
    uint256[8] _value;
    uint _mem;
    constructor()
        public
    {
        _mem = _value[7];
        _value[7] = bytes32(bytes20(_mem));
        _name.push("2");
    }
}
