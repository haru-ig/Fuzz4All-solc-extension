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
        f[e] = 321;
    }
}
pragma solidity ^0.8.0;
interface IMutatedSolidityAssemblyExample {
    function a(uint) external;
}
pragma solidity ^0.8.0;
interface ISolidityAssemblyExample {
    function a(uint) external;
}
