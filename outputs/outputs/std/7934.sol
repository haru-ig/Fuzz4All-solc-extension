pragma solidity ^0.8.0;
contract Array_43 {
    uint256[] public array;
    uint64[] public adr;
    uint64[] public a1;
    uint64[] public a2;
    uint64[] public a3;
    uint64[] public a4;
    uint64[] public a5;
    uint64[] public a6;
    uint64[] public a7;
    uint64[] public a8;
    address[] public a9;
    address[] public a10;
    uint256 count;
}

pragma solidity ^0.8.0;
contract NotARandomContract {
    uint i;
    mapping (uint => uint) public data;
    mapping (uint => uint[]) private arrays;
    uint[] private newData;
    uint[] public newAdr;
    uint[] public newA1;
    uint public newA2;
    uint32 public newA3;
    bytes32 public newA4;
    bytes4 public newA5;
    uint8_16 public newA6;
    uint17 public newA7;
    bool public newA8;
    bytes6 public newA9;

    constructor () {
        i = 2049375309;
        data[1311372999] = 25;
        newData.push(26);
        newData.push(27);
        newData.push(28);
        newData.push(29);
        newData.push(30);
        newData.push(31);
        newData.push(32);

        arrays[10][0] = 13;
        arrays[10][1] = 14;
        arrays[10][2] = 15;
        arrays[10][3] = 16;
        arrays[10][4] = 17;
        arrays[10][5] = 18;
        arrays[10][6] = 19;
        arrays[10][7] = 20;
        arrays[10][8] = 21;
    }
}

pragma solidity ^0.8.0;
contract Array_44 {
    int index;
    mapping(int => int[]) public data;
    constructor () {
        index = 0;
        data[index][0] = 13;
        data[index][1] = 14;
        data[index][2] = 15;
        data[index][3] = 16;
    }
}
