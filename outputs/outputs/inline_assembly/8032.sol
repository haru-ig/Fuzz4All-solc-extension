pragma solidity ^0.8.0;
contract MultipleReturnMutant {
    uint public x;
    uint public y;
    uint public z;
    uint public num;
    function multipleReturn() public returns (uint, uint, uint) {
        num = 2;
        uint x = 1;
        x = num;

        num = num + 1;

        uint y = 2;
        y = 30;
        return
            (5 - num, 6 - num, num), num = 3
        ;
    }
    function multipleReturn0x0() public returns (uint, uint) {
        num = 2;
        uint x = 1;
        x = num;

        num = num + 1;

        uint y = 2;
        y = 30;
        return
            (num, num + num);
    }
    function multipleReturn0(){
        num = 1;
        num = num + 1;
        uint x = 1;
        x = x * 2;

        return num;
    }
    function multipleReturn2() public returns (uint, uint, uint, uint) {
        num = 1;
        num = num + 1;
        uint x = 1;
        x = x * 2;
        num = 31;

        return 8 * num,
            num,
            9 * 2 + num,
            10 * 2 * 2 + num;
    }
    function multipleReturn0x02() public returns (uint, uint, uint) {
        num = 1;
        num = num + 1;
        uint x = 1;
        x = x * 2;
        num = 31;
        num = 40;
        return (num, num + num, num);
    }
}
