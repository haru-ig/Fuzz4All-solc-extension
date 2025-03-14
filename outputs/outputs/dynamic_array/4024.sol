pragma solidity ^0.8.0;
contract C {
    uint[] data;
    uint[] data2;
    uint[] data3;
    constructor() public {
        data2.push(1);
        data3.push(2);
    }
    receive() external payable {
    }
    function f() public {
        data3 = data;
        data2.pop(); data3.push(3);
        data2 = data2;
        data3.pop(); data2.push(4);
        data2 = new uint[](0);
        data3.pop(); data2.push(5);
        data2.push(5);
        data3 = data2;
        data3.push(0);
        data.pop(); data2.push(6);
    }
}

pragma solidity ^0.8.0;
contract C {
    uint[][][] data2;
    uint[][][] data3;
    constructor() public {
        data2.push([]);
        data3.push([]);
        data2[1].push([]);
    }
    receive() external payable {
    }
    function f() public {
        data2[1][1][1] = data2[1][1][1];
        data2.pop();
        data3[0][0].push(data3[0][0].length);
        data3[0][0].pop();
        data2.push(new uint[][][](0)[0]);
        data3[0][0].push(3);
        data3[0][1].push(1);
    }
}
