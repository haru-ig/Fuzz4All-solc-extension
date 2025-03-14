pragma solidity ^0.8.0;
contract Test42e2 {
    mapping (uint => uint) public mynMap;
    constructor () public {
        mapping(uint256 => uint) _data1;
        _data1[1] = mynMap[1]+2;
        _data1[1] = mynMap[1]+1;
    }
    function test() public {
        mynMap[1] = mynMap[1]+1;
    }
    function test2() public {
        mynMap[1] = mynMap[1]+2;
        mynMap[1] = mynMap[1]+3;
    }
}
