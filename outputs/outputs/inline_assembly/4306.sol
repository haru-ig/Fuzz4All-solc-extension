pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    uint public _increment(uint Y) public returns (uint Y){
        return 0;
    }
    uint public _set(uint k, uint v) public returns (uint){
        return 0;
    }
    constructor(uint Z) public {
        _set(0, c);
        a = Z;
        b = Z + 1;
        c += Z + 1;
    }
    function increment(uint Y) public returns (uint) {
        return _increment(0);
    }
    function update() public {
        _set(1, 1);
        b = Z + 2;
        f[msg.sender] = 1;
    }
}
