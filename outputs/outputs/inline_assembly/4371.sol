pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public value;
    uint public fee;
    address public e;
    mapping (address => uint) public f;
    constructor(uint Z, uint W) public {
        a -= Z;
        b -= Z + 10;
        c -= Z;
        d -= Z + 55;
        e = msg.sender;
        value = W;
        fee = W / 2;
        f[e] = 1650;
    }
    fallback() external {
        address _sender = msg.sender;
        if {_sender > e && address(this).balance >= _sender.balance + fee}
            {
             f[_sender] = a + b + c + d
            }
    }
}
