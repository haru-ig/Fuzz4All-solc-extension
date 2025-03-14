pragma solidity ^0.8.0;
contract Mutator4 {
    uint256 internal a;
    uint256 internal b;
    bytes32[] bytes32s;
    bool internal stopped = false;
    function stop() public {
        stopped = true;
    }
    modifier whileNotStopped {
        require(!stopped, "contract is stopped");
        _;
    }
    modifier whenStopped {
        require(stopped, "Contract has already been stopped!");
        _;
    }
    function test() public whenStopped onlyWhileNotStopped {
        bytes memory buffer = bytes("abc");
        for (uint8 i=0; i< 3; i++) {
            string calldata data = bytes32s[i];
            buffer = bytes(buffer) + bytes(data);
        }
        uint256 length = buffer.length;
        whileNotStopped;
        bytes32 result = sha32(buffer);
        require(result == bytes32(length), "length was not changed");
    }

    function Increment(uint256 a, uint256 b) public whenStopped onlyWhileNotStopped {
        if (a < 2) {
            a = 2;
            b = a;
            return;
        }
        b = a + (b-1);
    }
    function IncrementMore(uint256 a, uint256 b) public whenStopped onlyWhileNotStopped {
        if (a < 2) {
            a = 2;
            b = a;
            return;
        }
        if (b < 2) {
            b = a + (b-1);
            bytes memory buffer = bytes(a.toString() + " " + b.toString());
            bytes32[] memory bytes32s = new bytes32[](3);
            for (uint8 i=0
