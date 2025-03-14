pragma solidity ^0.8.0;
contract T10FS_call_data_array {
    uint public val = 0;
    uint[16] public empty1;
    uint[16] public empty2;


    constructor(uint _val) public {
        val = toUint8(uint(-1));
        empty1[0] = 0;


    }
}

pragma solidity ^0.8.0;
contract T10FD_call_data_array {
    uint public val = 0;
    uint[16] public empty1;
    uint[16] public empty2;


    constructor() public {
        val = toUint8(uint(-2));
        empty1[0] = 0;
        empty2[0] = 0;


    }
}
