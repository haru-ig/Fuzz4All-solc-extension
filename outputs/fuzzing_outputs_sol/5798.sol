pragma solidity ^0.8.0;
contract SemanticallyEquivalentExceptions {
    int a;
    string b;
    constructor() {
        a = 4;
        b = "hello";
    }
    function test() public payable returns (address, address){
        if (a > 3 || a == 3) {
            return (a, a);
        }
        else {
            return (a, b);
        }
    }
}
