pragma solidity ^0.8.0;
contract C {
    uint[] data;
    uint[] data2;
    uint y;
    uint128 x;
    constructor() public {
        data2 = new uint[](0);
        data2.push(1);
        data2.push(2);
        data.push(1);
        data.push(1);
        data.push(1);
        data = data2;
        data.push(5);
        data.push(1);
        data.push(1);
        data.push(1);

        data.push(data2[0]);
        data.push(1);
        data.push(1);
        x = 1111;
        x += 3333;
        x = 1_797_921_681;
        x += x;
        x = 1_797_921_681;
        x += x;
        y = 9999;
        y += y;
        y *= 4294967256;
        y /= y;
        y *= 555555;
        y += y;
        y /= y;
        y *= -2;
        y /= y;
        y *= -2;
        x /= x;
        x *= 55555;
        z = -1 * -1000000;
        z *= 1;
        z += y;
        z *= -2;
        x *= x;
        x *= x;
        x *= x;
        x /= x;
        x *= -1;
        x /= x;

        data2.push(2);
        data2.push(3);
        data2 /= data;
        data2 /= data;
        data2 *= data;
        data2 *= data;
        data5 += data;
        data5 *= data;
        data5 *= data;
        data5 *= data;
        data5 *= data;
        data5 *= data;
        data5 *= 46;
        data5 *= 1248;
        data5++;
        data(0)++;
    }
    receive() external payable {
    }
    function get_data() public
