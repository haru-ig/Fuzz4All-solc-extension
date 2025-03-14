pragma solidity ^0.8.0;
contract C {
    uint[] data;
    uint[] data2;
    uint[] data3;
    function g() public {
        data[1] += 1;
        data[1] += 2;
        data2.append(10);
        data2.append(11);
        data2.append(12);
        data2.append(13);
        data3.append(1);
        data3.append(2);
        data3.pop();
        data3.pop();
        data2[data.length] += 10;
        data2[data.length] += 11;
        data2[data.length] += 12;
        data2[data.length] += 13;
        data3[data.length] += 1;
        data3[data.length] += 2;
        data2.pop();
        data2.pop();
        data2.pop();
        data2.pop();
        data3.pop();
        data3.pop();
        data3.pop();
        data3.pop();
        data3.pop();
    }
}
