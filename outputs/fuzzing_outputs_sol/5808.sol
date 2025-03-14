pragma solidity ^0.8.0;
contract MutatedSemanticsExceptions {
    int a;
    bool b;
    uint256 c;
    constructor() {
        a = 4;
        b = false;
        c = 3;
    }
    function test() public payable {
        if(a == 4 && b && c == 3){
            b = true;
        }else{
            b = false;
        }
    }
}
