pragma solidity ^0.8.0;
contract ReentrancyTest {
    contract Child {
        uint[] data0;
        uint[] public data1;
        uint[] internal data2;
        uint[] private data3;
        uint[] mutable data4;
        uint[] volatile data5;
        uint[] constant data6;
        uint[] public external data7;
        uint[] internal external data8;
        uint[] private external data9;
        uint[] mutable external data10;
        uint[] volatile external data11;
        uint[] constant external data12;
        uint[] public internal external data13;
        uint[] internal internal data14;
        uint[] private internal data15;
        uint[] mutable internal data16;
        uint[] volatile internal data17;
        uint[] constant internal data18;
        uint public fallbackValue;
        constructor () public {
            data0.push(0x00100000);
            fallbackValue = 0x00200000;
        }
        function increment() public returns (uint) {
            data1.push(0x00300000);
            data1.push(0x00400000);
            return fallbackValue;
        }
    }
    constructor () public {
        data0 = [0x00];
        data1 = new uint[](1);
        Child x;
    }
    fallback () external {
        data0.push(0x00500000);
    }
}
