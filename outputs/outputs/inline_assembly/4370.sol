pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        a -= z(Z);
        b -= z(Z) + 10;
        c -= 0;
        d -= z(Z) + 55;
        e = msg.sender;
        f[address(this)] = 1650;
    }
}

pragma solidity ^0.7.6;
contract InlineAssemblyTutorial {









    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        a -= Z;
        b -= a + Z;
        c -= Z;
        d -= d + Z;
        e = msg.sender;
        f[e] = 1650;
    }
    function z(uint Z) internal view returns(uint) {
        return Z + 10;
    }
}
