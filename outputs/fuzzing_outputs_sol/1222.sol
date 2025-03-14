pragma solidity ^0.8.0;
contract SemanticsEquivalence11 {
    struct Data { uint x1; uint x2; uint x3; }
    address payable data1;
    function run() public { data1.transfer(gasprice); }
}
pragma solidity ^0.8.0;
contract SemanticsEquivalence12 {
    struct Data { uint x1; uint x2; uint x3; }
    function memorySize() public pure returns (uint) {
        return 6;
    }
}
pragma solidity ^0.8.0;
contract SemanticsEquivalence13 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data1;
    uint internal data2;
    function run() public {
        data2 = (data1.x1 + data1.x2 + data1.x3);
        data1.x1 += data2;
        data1.x1 += data2;
        data1.x1 = 43;

        data1.x1 = 12*3;
        data1.x2 = memorySize();
        data1.x2 = 12*3;
        data1.x1 = data1.x3;
        data1.x1 = data1.x2;


        data2 = (data1.x1 + data1.x2 + data1.x3);
        data1.x1 += data2;
        data2++;
        data1.x1 += data2;
    }
    function memorySize() public pure returns (uint) {
        return 43;
    }
}
