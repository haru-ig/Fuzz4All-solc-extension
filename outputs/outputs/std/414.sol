pragma solidity ^0.8.0;
contract Test {
    constructor(uint x) public { }
    function test() public pure returns (uint8) {
        return 17;
    }
}

pragma solidity ^0.8.0;
contract Test {
    function test() public pure returns (uint8) {
        return 17;
    }
    uint8[32][3] memory data = [0x01, 0x02, 0x03, 0xFF, 0, 0xCC, 0x03, 0xFA];
}

pragma solidity ^0.8.0;
contract Test {
    contract memoryTest {
        uint[] public data = [1, 3, 5][100];
        function test() public pure returns (uint8) {
            return 17;
        }
    }
    function test() public {
        memoryTest memory testobj = memoryTest(msg.sender);
        uint8[] memory data2 = testobj.data;
        assembly {
            selfdestruct(0)
        }
    }
}
