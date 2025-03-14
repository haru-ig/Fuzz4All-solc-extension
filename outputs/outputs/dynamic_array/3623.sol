pragma solidity ^0.8.0;
contract C{
    uint256 a;
    mapping(uint256 => uint256) public b;
    function b() public {
        b[b[a] = 3];
    }
    function a() public {

    }
}
