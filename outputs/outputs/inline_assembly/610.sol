pragma solidity ^0.8.0;
contract Test {
    function testMethod() public {
        Simple simple = Simple(0xFedCBA9876543210);
        simple.testMethod();
        another();
    }
    function another() public {
        Another a;
        a.testMethod();
        interior();
        someMethod();
    }
    function interior() public {
        Intra i;
        i.testMethod();
        Interior i2;
        i2.testMethod();
    }
    function getBytes(uint len) public pure returns (bytes memory) {
        bytes memory b = bytes("bytes");
        assembly {
            b := mload(add(add(add(b, 20), 4), mul(len, 2)))
        }
        return b;
    }
    function someMethod() public {
        bytes memory b = getBytes(255);
        Simple s;
        s.testMethod();
        s = Simple(0xFedCBA9876543210);
        s.testMethod();
    }
}
