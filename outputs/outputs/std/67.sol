pragma solidity ^0.8.0;
contract MutateProgram {
    mapping(uint => uint) private _map;
    constructor(uint init) public {
        _map[uint160(0x50a2522d9ffce99f84352914553a861d06ed36ea705522c8ee795f547637ea3b)] = init;
    }
    function _get_map(uint key) private view returns (uint) {
        return _map[key];
    }
}
