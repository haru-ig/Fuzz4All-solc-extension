pragma solidity ^0.8.0;
contract C {
    uint[] data2;
    uint[] data3;
    function f() public {
        data2.push(1);
        data3.push(2); data3.push(3);
        data3.pop();
        data3.push(1 + data2.length);
        data3.push(data2[data2.length] + 1);
        data3.push(data2[data2.length] + 2);
    }
}
