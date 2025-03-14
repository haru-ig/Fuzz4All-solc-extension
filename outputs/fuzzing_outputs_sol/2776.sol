pragma solidity ^0.8.0;
contract NotFallback {
    uint _value = 300;
    mapping (bytes32 => bool) internal _map;
    event LogValue(_value uint);
    constructor() internal { _value = 30000; }
    fallback () external view returns(uint) {
        require(!_map[keccak256("fallback")], "Failed to set up fallback!");
        _value = 10000;
        LogValue(_value);
        return 36535;
    }
    receive() external {
       _map[keccak256("fallback")] = true;
       LogValue(30000);
    }
    function getvalue() public view returns(uint) { return _value; }
}
