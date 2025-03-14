pragma solidity ^0.8.0;
contract BetterCase8 {
    uint[1][3][3] memory a;

    function useless1(address a, uint256 b) public {
        a[0][0] = 3;
        a[1][0] = 1;

        a = add(a, b);
        a = get(a);
        a = [1, 2, [3, 5], 4, 7, 11];
        a = get(a);

        a[2] = [11, 19, 25];
    }

    function useless2(uint[1] memory b, uint256 c, uint[1][1] memory d) public {

        d = [100];
        a = [1, 123, [5, 6, 7, 100, 9, 134, 12]];
    }

    function get(address a) pure publai {
        return a;
    }

    function add(uint[5][5][5] memory a, uint[5][5][5] memory b) pure public returns(uint[5][5][5]) {
        uint[5][5] memory c;
        for (uint i = 0; i < 5; ++i) {
            c[0][i] = a[0][i] + b[0][i];
        }
        return c;
    }
}
