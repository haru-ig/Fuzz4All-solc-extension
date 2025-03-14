pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExampleTwo {
    address public a;
    address public b;

    constructor(address _A, uint _B) public{
        a = _A;
        b = _A;
    }


    function b() public pure returns (address b) {
        b = a;
        return b;
    }
}
contract MutatedSolidityAssemblyExample {
    ISolidityAssemblyExample public sa;
    IMutatedSolidityAssemblyExample public ma;

    constructor(
        uint Z,
        address _SA,
        address _MA
    )
        public
    {
        sa = ISolidityAssemblyExample(_SA);
        ma = IMutatedSolidityAssemblyExample(_MA);

        sa.a(Z);
        ma.a(Z + 123);

        sa.a(29);
        ma.a(22 + 32);
    }

}
