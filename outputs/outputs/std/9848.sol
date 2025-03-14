pragma solidity ^0.8.0;
contract S7
{
    function func()
    {
        uint x = 0;
        uint[2][3] memory a = [uint[3] memory { 1, 2, 3 }, uint[3] memory { 4, 5, 6 }];
        x = a.length;
        uint x = a.length%3;
        uint x = a[0].length;
        uint[4] memory x = a;
        uint[4] memory x = memory{ a = 1 }[0].a;
        x = memory{ a = 10 }[0].a;
        uint[4][4] memory x = memory{ a = memory { b = memory { c = 1000 } } }[0].a[0].a;
        int[10][10][5] memory x;
        int[10][10][5] memory x;
    }
}
