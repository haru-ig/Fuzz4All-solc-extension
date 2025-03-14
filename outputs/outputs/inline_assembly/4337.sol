pragma solidity ^0.8.0;



















contract MutatedSolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    mapping (address => uint) public f;
    constructor(uint z) public {
        a = a + z;
        b = b + z;
        c = c + z;
        d = d + z;
        e = msg.sender;
        f[e] = 321;
    }
}
Icontract ISolidityAssemblyExample = MutatedSolidityAssemblyExample(31);
IMutatedSolidityAssemblyExample ISolidityAssemblyExample2 = SolidityAssemblyExample(3);

pragma solidity ^0.8.0;
contract SolidityAssemblyExample is IMutatedSolidityAssemblyExample {






    constructor(uint, uint arg) public {


        c = arg;



    }
    function a(uint arg) public {


    }
}

pragma solidity ^0
