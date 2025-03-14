pragma solidity ^0.8.0;
contract SolidityExample1 {
    bytes public data;
    bytes private data2;

    bytes32 private x;


    constructor() {


        x = 0x6176612073746F7265666965676174696F6E2043532052657475726E204F5554204578636C7573697665


        x = bytes32(x);



        data = bytes(0);
        data2 = bytes(0);
    }
}
pragma solidity ^0.8.0;





pragma solidity ^0.7.0;

contract Example {

    uint number = 2;
    uint payedNum = 3;

    uint[2] arrUint;
    uint[2][2] arr;

    address addrUint;
    address addr;

    bytes32 x;
    bytes4 function;
    bytes32[1] arrBytes32;
    bytes4[1] arrBytes4;

    string name;
    string[20] fullName;
    string[20][] arrayOfNames;

    string[20] public stringPublic;
    string[20] private stringPrivate;

    mapping(uint => uint) mapUint;
    mapping(uint => mapping(uint => uint)) mapPair;

    uint[] public a;
    uint[] a;

    uint[4] arrUint4;
    uint48[4] arr
