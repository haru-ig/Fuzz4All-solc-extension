pragma solidity ^0.8.0;
contract SemanticallyEquivalentExceptions {
    int a;
    bool b;
    constructor() {
        a = 4;
        b = false;
    }
    function test() public payable {
        if(a > 3 || a == 3){
            b = true;
        }
    }
}
