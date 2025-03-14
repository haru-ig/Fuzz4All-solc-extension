pragma solidity ^0.8.0;
contract Example5 {
    function add6Sum(uint[5] memory numbers) pure public returns (uint) {
        uint sum = 0;

        for (uint i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }

        return sum;
    }

    function add7Sum(uint x, uint y) pure public returns (uint) {
        uint sum = x + y;

        sum = x;
        return sum;
    }

    function add8Sum(uint x, uint y) pure public returns (uint) {
        x = x + y;
        x = x + y;
        return x;
    }

    function add9Sum(uint x) pure public returns (uint) {
        uint  sum = x + x;

        sum = 0;
        return sum;
    }
}
