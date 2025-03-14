pragma solidity ^0.8.0;
contract SolidityAssemblyExample2{
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        c = block.timestamp / 2;
        a += Z + 3;
        b += Z + 1;
        d = _add(Z, 1);
        a++;
        b++;
        a++;
        b++;
        f[msg.sender] = 0;
    }
    function increment(uint Y) public returns (uint) {
        return 0;
    }
    function update() public {
        f[msg.sender] = _add(f[msg.sender]);
    }
    function _add(uint X, uint Y) private pure returns (uint Z){
        return X + Y;
    }
}
