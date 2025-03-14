pragma solidity ^0.8.0;
contract C {
    string s = "Test";
    function Test() public {
        s = library1().testMethod();
    }
    function testMethod() private view returns (uint32) {
        uint32 x;
        assembly {
            x := add(mload(0), 0x00)
        }
        return x;
    }
}
