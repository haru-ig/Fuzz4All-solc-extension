pragma solidity ^0.8.0;
contract Arrays11{
    uint16[] s = [1,2,3];
    constructor() public{
        s[0] = 2;
    }
}
pragma solidity ^0.8.0;
mapping (address => uint) balances;
contract Arrays12{
    uint16[] arr = [1,2,3];
    mapping (bytes32 => uint32) arr32;
    mapping (uint32 => bytes32) arr322;
    constructor() public{
        s = [1,2,3];
        arr32[0] = 1;
        arr322[uint32(1)] = "abc";
    }
}
