pragma solidity ^0.8.0;
contract C {
    uint256 a;
    mapping(uint256 => uint256) public b;
    function c(address _to) public payable {
        a = a + 1;
        b[a] = 2;
        delete b[a];
        _to.call{value:bytes(2)}{};
    }
}
