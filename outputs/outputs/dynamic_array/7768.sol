pragma solidity ^0.8.0;
contract Test7 {
    uint256[] _mem;
    uint256 _value = 845;
    constructor() public {
        _mem.push(0);
        _mem.push(867);
        _mem.push(0);
        _mem.push(9);
    }
    function mutate() public {
        _mem[4] = 15;
        _mem[5] = 857;
        _mem[6] = _value;
        _value = 745;
    }
    function getValue() public view returns (uint256) {
        return _value;
    }
}
