pragma solidity ^0.8.0;
contract Example7Mutated {
    fallback() external payable {
        uint value;

        assembly {
            value := mload(1)
        }
        uint value2 = add(subtract(42, 121), 2);

        assembly {
            mstore(0, value2)
        }
        if (keccak256(abi.encodePacked(uint100))).staticcall(
            abi.encodeWithSelector(Example8Mutated.fallback.selector),
            abi.encode(value, "Hello")
        ) {
            bool success = false;
            (success, ) = msg.data.staticcall(value2, bytes("Hello"));
        }
    }
}
