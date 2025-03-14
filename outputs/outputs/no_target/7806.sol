pragma solidity ^0.8.0;
interface TestInterface {
    function testImpl() external returns (uint160);
}
pragma solidity ^0.8.0;
library TestLib {
    function testInt() public pure returns (uint256) {
        uint160 i = 1 + -2 - 0xb;
        return uint256(i);
    }
    function testUint() public pure returns (uint256, uint256) {
        uint160 i = 1 + -2 - 0xb;
        return (uint256(i), i);
    }
    function testB() public pure returns (bytes memory) {
        return abi.encode("bytes");
    }
    function testB2(bytes memory b) public pure returns (bytes20) {
        if (block.difficulty < 1) {
            return bytes20(bytes32(block.difficulty));
        } else {
            return bytes20(b);
        }
    }
    function testB3() public pure returns (bytes32) {
        return blockhash(1);
    }
    function testInterface() public pure returns (TestInterface) {
        return address(0);
    }
}




pragma solidity ^0.8.5;



contract Test is TestLib {

    function test() public returns (uint160) {
        return TestLib.log1(uint256(uint16(65535))));
    }

    function testInt() public returns (uint256) {
        return TestLib.testInt();
    }

    function testUint() public returns (uint256 memory, uint256) {
        uint256 val;
        (val, val) = TestLib.testUint();
        return (val, val + 1);
    }

    function testB2() public returns (bytes20) {
        return TestLib.testB2(uint256(uint16(65535)));
    }

    function testB3() public returns (bytes32) {
        return TestLib.testB3();
    }

    function testInterface() public returns (TestInterface) {
        return TestLib.testInterface();
    }
}
