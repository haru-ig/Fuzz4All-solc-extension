pragma solidity ^0.8.0;
contract MutatedSemanticsExceptions {
    int a;
    bool b;
    uint256 c;
    constructor() {
        a = 2;
        b = true;
        c = 3;
    }
    function test() public payable {
        if(b == true && a == 2 && c == 3){
            a = 1;
        }else{
            b = false;
        }
        if(!b || a!= 1 || c!= 3){
            b = true;
        }else{
            b = false;
        }
    }
}
