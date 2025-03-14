pragma solidity ^0.8.0;
contract C {
    uint[] data2;
    uint[] data3;
    constructor() public {
        data2.push(1);
        data3.push(2);
    }
    receive() external payable {
    }
    function f() public {
        data3.pop(); data2.push(3);
        data3.push(4);
        data2[0] = 1;
        data2[1] = data3;
        data3.pop();
        data2.push(6);

        data2.push(5);
        data3 = data2;
        data2.pop();
        data2[0] = data3;
        data3.push(7);
    }
}
