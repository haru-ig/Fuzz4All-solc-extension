pragma solidity ^0.8.0;
contract L73 {
    uint x = 1;
    bool bool1;
    bool bool2;
    constructor(){
        bool1 = true;
        bool2 = false;
    }
    function sneaky() public {
        if (bool1 && bool2) {
            x += 3;
        } else {
            x += 2;
        }
    }
    function test(){
        sneaky();
        if (bool1 && bool2) {
            x += 3;
        } else {
            x += 2;
        }
    }
    function test1(){
        doSomething();
    }





}
