pragma solidity ^0.8.0;
contract TestMutated7 {
    constructor() {
        newTest.send1(msg.value + 10*uint(uint8(255)));
    }
}

pragma solidity ^0.8.0;

contract testMutated8 {
    function send8() public returns (uint256) {
        newTest2.send1(msg.data);
    }
}
contract newTest8 is testMutated8 {
    function newTest8() public {
        TestMutated8.mul(uint(- 1), msg.value + 10);
        newTest2.send1(uint(uint8(255)) + 101);
    }
}
contract testMutated8 {
    function newTest2() public {
    }*/


pragma solidity ^0.8.0;
contract testMutated10 is testMutated6, testMutated7, testMutated8 {
    bytes32 public constant a0 = 0xAF54B982E422E9D3D4723824FC7EB60EEBE34384E29EB9DE354EB2E47912A8F9;

    constructor() {
        super.testMutated6();
        super.testMutated7();
    }

    function testMutated6() public view returns (string memory) {
        return string(10, "TestMutated6");
    }

    function testMutated7() public view returns (string memory) {
        return string(10, "TestMutated7");
    }

    function testMutated8() public view returns (string memory) {
        return string(10, "TestMutated8");
    }

    function testMutated10() public view returns (string memory) {
        return string(10, "TestMutated10");
    }

    function testMutated8_send() public {
        newTest8.send8();
    }
}
