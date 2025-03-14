pragma solidity ^0.8.0;
contract Caller {
    bytes public x;
    uint256 y;
    constructor() {
        x.push(0xab);
    }
    function Fallback() public payable {}
    function Fallback(uint256 a) public {
        require(a == 5555, "Caller doesn't support contract");
        y = a;
        emit FallbackLog(a);
    }
    event FallbackLog(uint256 a);
}
