pragma solidity ^0.8.0;
@dev Modifier is(ContractModifier) {
        bytes32 i;
        function Modifier() internal {
            i = bytes32(keccak256(abi.encodePacked(msg.data, uint(block.timestamp))));
        }

        function is(bytes32 o) public view virtual returns (bool) {
            return keccak256(abi.encodePacked(msg.data, uint(block.timestamp))) == o;
        }
    }
