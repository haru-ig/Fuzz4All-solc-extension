pragma solidity ^0.8.0;
contract Modul{
    uint constant test = 1000;
    uint constant test2 = 1;
    uint constant test3 = 100;
    uint test4 = 0;
    uint public test5;
    uint public test6;

    function solve() public pure returns (uint) {
        test6 = test + 1;
    }
}

pragma solidity ^0.8.0;
contract Modul{
    uint constant test4 = 1;

        uint constant test5 = test4;

        uint constant test = 1000;


    uint constant test2 = 1347;

        uint constant test3 = 100;


    function solve() public pure returns (uint) {
        uint r;

        r = 2;

        if(test < test2){
            r = 2;
        }
        return r;
    }



/* This is not a simple question. If we want to know, we could call a function to "detect whether or not a variable (such as test) is defined". If that function returns false, then the variable
