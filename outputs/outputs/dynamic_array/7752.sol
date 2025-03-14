pragma solidity ^0.8.0;
contract Test6c {
    address _addr = address(this);
    uint256[] _mem = [
        0
    ];
    function check(address a) public {
        _mem[4] = 1;
        _value = 1;
        _addr.transfer(_value);
        _mem[100] = 42;
        _mem[4] = 1;
    }
}
