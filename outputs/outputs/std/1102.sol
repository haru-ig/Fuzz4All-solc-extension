pragma solidity ^0.8.0;
contract Array {

    uint[] public x;
    function setX(uint[] memory x_) {
        x = x_;
    }
    function printArray() public {
        uint x2 = x.length;
        for(uint i = 0; i < x2; i++) {
            uint x3 = x[i];
            uint x4 = x3 + 5;
            uint x5 = 10;
            uint x6 = 0;
            console.log(x3, x4, x5, x6);
        }
    }
    function sumArray() public returns(uint) {
        uint x2 = x.length;
        uint x3 = uint(0);
        for(uint i = 0; i < x2; i++) {
            x3 += x[i];
        }
        return x3;
    }
    function minArray() public returns(uint) {
        uint x2 = x.length;
        uint x3 = x[0];
        for(uint i = 0; i < x2; i++) {
            uint x4 = x[i];
            if(x4 < x3) {
                x3 = x4;
            }
        }
        return x3;
    }
    function maxArray() public returns(uint) {
        uint x2 = x.length;
        uint x3 = x[0];
        for(uint i = 0; i < x2; i++) {
            uint x4 = x[i];
            if(x4 > x3) {
                x3 = x4;
            }
        }
        return x3;
    }

    function createRandomArray() public {
        uint x2 = 10;
        uint[] memory x3;
        for(uint i = 0; i < x2; i++) {
            x3[i] = i % 2 / 2;
        }
        console.log("x3:");
        console.log(x3);
        setX(x3);
    }
}



pragma solidity ^0.8.0;



contract ArrayTest {
    function testArray() public {
        Array memory x;
        uint y0;
        y0 = x.sumArray();
        y0 = x.maxArray();
        y0 = x.minArray();
        x2 = x.maxArray();
        x2 = x.minArray();
        x2 = x.sumArray();
    }

    uint[] public x;
    function setX(uint[] memory x_) {
        x = x_;
    }
    function printArray() public {
        console.log("sumArray:", x.length);
        uint x2 = x.length;
        for(uint i = 0; i < x2; i++) {
            uint x
