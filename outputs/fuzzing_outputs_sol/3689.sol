pragma solidity ^0.8.0;
contract Example6 {
    function add6Plus(uint[5] memory numbers) pure public returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
        return sum;
    }
    function add7Plus(uint x, uint y) pure public returns (uint) {
        uint sum = x + y;
        sum = 0;
        return sum;
    }
    function add8Plus(uint x, uint y) pure public returns (uint) {
        x = x + y;
        x = 0;
        return x;
    }
    function add9Plus(uint x) pure public returns (uint) {
        uint  sum = 0 + x;
        sum = x;
        return sum;
    }
}
