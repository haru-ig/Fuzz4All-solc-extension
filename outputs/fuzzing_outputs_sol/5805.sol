pragma solidity ^0.8.0;
contract SemanticallyDifferentExceptions {
    int a;
    bool b;
    uint256 c;
    constructor() {
        a = 4;
        b = false;
        c = 3;
    }
    function test() public payable {
        b = false;
        if(c == 3 && a == 4 && true && b){
            a = 4 + 1;
        }
    }
}
