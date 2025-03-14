pragma solidity ^0.8.0;
contract Test42{
    mapping(uint => uint256) public mynMap;
    constructor () public {
        mynMap[1] = 2;
    }
    function test() public {
        this.add1();
        this.add2();
    }
    function add1() private returns (uint) {
        mynMap[1] = mynMap[1]+1;
        return mynMap[1];
    }
    function add2() private returns (uint) {
        mynMap[1] = mynMap[1]+2;
        mynMap[1] = mynMap[1]+3;
        return mynMap[1];
    }
}
