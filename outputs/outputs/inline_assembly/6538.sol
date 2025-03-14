pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample6 {
    uint a;
    uint b;
    uint c;
    constructor(uint d1) public {
        a = d1;
        b = 0;
        c = 0;
        doSomethingUsingInlineAssembly();
    }
    function doSomethingUsingInlineAssembly() public {
        doSomething();
        uint d = getFirstNonZeroValueInInlineAssembly();
        b = d + 1;
        uint e = 2;
        doSomethingElseThatUsesInlineAssembly(b + 1);
    }
    function doSomethingElseThatUsesInlineAssembly(uint x) public {
        if (a > 2) {
            b = x;
        }
    }
    function getFirstNonZeroValueInInlineAssembly() public view returns (uint _firstNonZeroValue){
        for (uint i = 0; i < 3; i++) {
            uint temp = c;
            c = b;
            b = temp;
            uint next = b;
            b = a;
            a = next;
            if (next > 0) {
                return a;
            }
        }
        return 0;
    }
}
