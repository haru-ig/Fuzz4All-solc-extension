pragma solidity ^0.8.0;
contract D {
    uint[] data1;
    uint[] data2;
    constructor() public {
        data1.push(0); data2.push(1);
        data1.push(2); data2.push(3);
        data1.push(4); data2.push(5);
    }
    receive() external payable {
    }
    function f() public {
        data2 = data2.concat(data2);
        data1 = data1.slice();
    }
}
