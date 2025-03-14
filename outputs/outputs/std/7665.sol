pragma solidity ^0.8.0;
contract GoodCase14 {
    uint8 m;
    uint8 p;
}
contract Test1 {
    function callTest1() public payable returns (uint8[]) {
        return uint8[1](6);
    }
    function callTest12() public {
        (address dummy, uint8 v, bytes memory r, bytes memory s) = callTest1.gas(20000)();
        emit Received(address(this), m);
    }
}
