pragma solidity ^0.8.0;
contract SemanticallyEquivalentExceptions {
    int a;
    bool b;
    uint256 c;
    constructor() {
        a = 4;
        b = false;
        c = 9;
    }
    function test() public payable {
        if(c == 8 && a == 4){
            b = true;
        }
    }
}
