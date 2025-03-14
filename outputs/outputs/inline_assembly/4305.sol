pragma solidity ^0.8.0;
contract SolidityAssemblyEquivalenceExample{
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        c += Z + 1;
        a += Z + 3;
        b += Z;
        {
            var Z = Z;
            a++;
            b++;
            d = 1;
        }
    }
    function isZero(int Y) public returns (uint) {
        uint Z;
        if (Y!= 0) {
            d = Y + b;
            Z = b;
        }
        return 1;
        function get() public { return Z; }
    }
    function increment(uint Y) public returns (uint) {
        uint Z;
        if(Y!= 0) {
            Z = d + Y;
        }
        return 1;
    }
    function update() public {
        f[msg.sender] = 1;
    }
}
