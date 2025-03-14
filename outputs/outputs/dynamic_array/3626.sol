pragma solidity ^0.8.0;
contract C {
    uint256 a;
    mapping(uint256 => uint256) public b;
    function c() public view {
        delete b[a];
        b[a] = 1;
        a = 1000;
        b[a] = 2;
    }
}
