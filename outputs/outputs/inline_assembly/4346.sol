pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        a += Z;
        b += Z + 10;
        c += Z;
        d += Z + 55;
        e = msg.sender;
        IMutatedSolidityAssemblyExample(self).a(351);
        f[e] = 1012;
    }
}
library IMutatedSolidityAssemblyExample {
    function a(uint input) internal view returns (uint output);
    function a(uint) private pure returns (uint output);
    function a(uint input) private view returns (uint output) {
        output = input + 10;
    }
}
