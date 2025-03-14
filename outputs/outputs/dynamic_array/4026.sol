pragma solidity ^0.8.0;
contract C {
    uint[] data2;
    uint[] data3;
    constructor() public {
        data2.push(1);
        data3.push(2);
    }
    receive() external payable {}
    function f() public {
        data2[0] = 2; data3.push(3);
        data2 = new uint[](0);
        data3.pop(); data2.push(4);
        data2.push(5);
        data3 = data2;
        data2[0] = 6; data3.push(3); data2.push(7);
    }
}
