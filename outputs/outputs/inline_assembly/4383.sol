pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    uint public _a;
    uint public _b;
    uint public _c;
    uint public _d;
    mapping(address => uint) public _e;
    constructor(uint Z) public {}
    function () external {
        _a += 27;
        _b += Z + 2;
        _c += Z + 2;
        _d += Z + 3 + 13;
        _e[msg.sender] += Z + 13;
    }
    function get() public view returns (uint) {
        return _a;
    }
    function getZ() public view returns (uint) {
        return _b;
    }
}
