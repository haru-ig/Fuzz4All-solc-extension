pragma solidity ^0.8.0;
contract L12 {
    address payable author;
    address payable operator;
    uint8 x;
    address payable[operatorStorageSize];
    event Log(address payable indexed author, address payable indexed operator,uint8 x);
    constructor(address payable a, uint8 v) {
        author = a;
        operator = a;
        x = v;
    }
    receive() external payable {}
    function access() public {
        emit Log(address(author), address(operator), x);
    }
    fallback() external {}
}
