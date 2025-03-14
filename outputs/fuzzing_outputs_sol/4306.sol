pragma solidity ^0.8.0;
contract MutatedSimpleFallbackTester {
    bytes32 constant mutateByte = "\x01";

    receive() external payable {
        require(msg.data == bytes20(0x01) || msg.data == bytes20(0));
    }
}


pragma solidity ^0.8.0;
contract MutatedLowLevelFallbackTester {
    bytes32 constant mutateByte = "\x01";
    bytes constant mutateString = "a9733cb1f643c986cfbe7bc22e0fa9e4f2154963820673cb8b8c9a0ad598a6b5";

    contract MutatedSimpleFallbackCaller {
        uint internal x = 10;

        modifier mutates {
            require(msg.data == bytes20(0x01));
            _;
        }

        function mutatesSimpleFallback() pure public {
            x += 1;
        }

        function mutatesFallbackWithLowLevel() pure public {
            msg.data = bytes20(0);
            require(msg.data == mutateByte);
        }
    }

    receive() external mutates {
        require(msg.sender == address(this));

        bytes32 expectedResult = bytes32(uint32(block.timestamp) + uint256(block.difficulty) * uint256(block.gaslimit));
        require(keccak256(abi.encodePacked(expectedResult, mutateByte)) == keccak256(abi.encodePacked(address(this).balance, mutateString)));
    }
}
