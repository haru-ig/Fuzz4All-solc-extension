pragma solidity ^0.8.0;
contract X is D {
    mapping (uint => uint) balances;
    mapping (address => uint) public allowances;
    uint x;
    uint z;
    uint ky;
    uint w;
    function foo() public {
        balances[msg.sender] += x;
        x = balances[msg.sender] * x / z + ky;
        w = x * w / 10;
    }
}
