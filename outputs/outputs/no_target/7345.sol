pragma solidity ^0.8.0;
contract Bug_2074239581096207811_1{
    uint a = 1, b;
    function Bug_2074239581096207811_1() public {
        b = a < 3? 3 : 1;
    }
}
