pragma solidity ^0.8.0;
contract SemanticallyEquivalentExceptions {
    int a;
    bool b;
    constructor() {
        a = 4;
        b = false;
    }
    function test() public payable returns (uint) {
        if(a > 3 || a == 3){
            b = true;
            return 1;
        }
        return 0;
    }
}



pragma solidity ^0.8.6;
contract FallbackTest {
    fallback() external payable;
}
