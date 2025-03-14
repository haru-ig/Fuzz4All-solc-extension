pragma solidity ^0.8.0;
contract Test47097 {
    uint[] public data;
    uint[] public data1;
    uint count = 0;
    constructor (uint[1][] memory _dummy_1) public {}
    fallback () external {
        data.push(1);
        data.push(2);
        data1[1] = 2;
    }

    function mutated() public {
        data[0] -= 1;
        data[1] += 2;
        data2[2][2] += 5;

        data.push(3);
        data1[1] = 2;
        count += 1;

    }

    function callData() public {
        data[2] = 1;
        data[3] = 2;
        data[4] += 3;
    }

    function mutatedCalldata() public {
        mutated();
        mutated();
        mutated();
        mutated();
        mutated();

        data2[1][1] = 2;
        data3[2] = 1;
        data4[2][1] = 2;
        data_not_mutated[1][1] = 2;
        data5[2][2] = 1;
        data6[2][2][2] = 1;
        data7[2] = 2;
        data8[0] = 0xFFFF;
        data9[2][2] = 2;
        data10[1] = 2;
        data11[2][1][1] = 1;
        data12[0] = 0xFFFF;
        data13[0][1] = 0xFFFF;
        data14[0][1][1] = 1;
        data15[0] = 0xFFFF;
        data16[0] = 0xFFFFB;
        data17[1] = 0xFFFFB;
        data18[1] = 0xFFFFB;
        data19[1] = 0xFFFFB;
        data20[1] = 0xFFFFB;
        data21[1] = 0xFFFFB;
        data22[0] = 0xFFFFB;
        data23[0] = 0xFFFFB;
        data24[0][0] = 0xFFFFB;
        data25[0] = 0xFFFFB;
    }

    uint
