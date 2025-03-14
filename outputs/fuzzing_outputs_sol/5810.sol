pragma solidity ^0.8.0;
contract RevertedSemanticsExceptions {
    int a;
    bool b;
    uint256 c;
    constructor() {
        a = 5;
        b = false;
        c = 2;
    }
    function test() public payable {
        if(a == 5 && b && c == 2){
            a = 7;
        }else{
            b = true;
        }
    }
}
