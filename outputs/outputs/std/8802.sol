pragma solidity ^0.8.0;
library MultiplyContract {


    function mul(uint a, uint b) internal pure returns (uint) {
        return a * b;
    }
}
contract MutatedTest {

    Mutated public immutable mutated;
    address public a;
    address public b;

    constructor (address c) {
        a = c;
    }

    function set(uint x, uint y) public {
    uint z = 5;
    a.call.value(x)("");
    }

    function test(uint x, uint y) public {
        a = a.call("");


        mul(x, y);


        set(x, y);
    }

    function test2() public {

        a = a.call("");
    }
}
