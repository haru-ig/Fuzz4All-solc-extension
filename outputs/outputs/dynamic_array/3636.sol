pragma solidity ^0.8.0;
contract C {
    uint256 a;
    mapping(uint256 => uint) public b;
    function c() public {
        a = a + 1;
        b[a] = 2;
        b.delete(a);
    }
}
