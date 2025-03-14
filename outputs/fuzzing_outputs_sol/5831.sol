pragma solidity ^0.8.0;
contract MutatedSemanticsModifier {
    uint a;
    uint b;
    uint c;
    address d;

    function initialize(uint x) public {
        a = x;
    }

    function test() public {

        b = 3;
        c = 2;
        d = address(0);
    }
}
