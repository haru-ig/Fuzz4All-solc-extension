pragma solidity ^0.8.0;
contract EquivalentABIv01WithAbiV01MutableInterface {
    mapping (address => address) public mints;
    mapping (address => uint> ) public mintTimes;
    function f() public {
        mints[address(this)] = address(this);
        mintTimes[address(this)] = 1;
    }
}
