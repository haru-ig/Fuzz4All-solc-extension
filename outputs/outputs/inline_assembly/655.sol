pragma solidity ^0.8.0;
contract Mutator2 {
    constructor() public {}
    function testMethod(int v) public pure{
        assembly {
            mstore(0x0, v)
        }
    }
}

package;
contract Mutator {
    constructor() public {}
    function testFunction(int a_int, int b_int, int c_int) public pure {
        c_int = a_int + b_int;
        Mutator2 mutatorContract;
        mutatorContract.testMethod(c_int);
    }
}
