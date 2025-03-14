pragma solidity ^0.8.0;
contract NonSemanticallyEquivalentExceptions {
    int a;
    bool b;
    uint256 c;
    constructor() {
        a = 4;
        b = false;
        c = 9;
    }
    function test() public payable {
        if(c == 4 && a == 9){
            b = true;
        }
    }
}
