pragma solidity ^0.8.0;
contract Modul2 {
    uint constant test3 = 100;
    uint constant test = 1000;
    uint num;
    uint num2;
    uint constant test2 = 1347;

    function solve() public pure returns (uint) {
        uint r;
        for (uint i = 1; i > 0; i++){
            num = 2;
            num = num*num;
            num2=num;
            num=1;
            num2=num;
            if (num!=num2){
                r = num * i;
                if (test >= test3) {
                    num = 1;
                    num = 0;
                    num2=0;
                    num2 = test + test2;
                    r = i * num;
                }
                return r;
            }
        }
    }
}
