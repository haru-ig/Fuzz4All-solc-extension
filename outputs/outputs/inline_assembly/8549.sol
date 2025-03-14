pragma solidity ^0.8.0;
contract Modul {
    uint constant test2 = 50;
    uint constant test3 = 60;
    mapping(uint => uint) storage counter;
    function add() public {
        counter[50] += test2;
        counter[51] += test3;
    }
}
contract Modul2 {
    uint constant test2 = 50;
    uint constant test3 = 60;
    mapping(uint => uint) storage counter;
    function add() public {
        counter[51] += test2;
        counter[52] += test3;
    }
}
contract Modul3 {
    uint constant test2 = 50;
    uint constant test3 = 60;
    mapping(uint => uint) storage counter;
    function add() public {
        counter[30] += test2;
        counter[31] += test3;
    }
}
