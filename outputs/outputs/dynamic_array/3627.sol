pragma solidity ^0.8.0;
contract C {
    uint256 a;
    mapping(uint256 => uint256) public b;
    function c() public {
        a = b[a];
        delete b[a];
        b[a] = 2;
    }
}
