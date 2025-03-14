pragma solidity ^0.8.0;
interface MutateTest925d7 {
    function __solidity_init() external;
    function method(bytes32) external;
    function readData() bytes32;
}
contract MutateTest925d7Implementation is MutateTest925d7, MutateTest925d7V1, MutateTest925d7V2, MutateTest925d7V3, MutateTest925d7V4, MutateTest925d7V5, MutateTest925d7V6, MutateTest925d7V7, MutateTest925d7V8, MutateTest925d7V9, MutateTest925d7V10, MutateTest925d7V11, MutateTest925d7V12, MutateTest925d7V13, MutateTest925d7V14, MutateTest925d7V15 {
    constructor() {
        require(msg.sender == address(0x0));
        test925d7v1 = address(this);
    }

    function method(bytes32 t) public {
        uint test = msg.value;
        test1 = msg.sender;
        test2 = uint8(msg.sender);
        test4 = address(this);
        test5 = bytes32(uint160(-1));
        test6 = uint32(bytes4(1));
        test7 = uint(bytes4{value:0x00000000000000000000}(1));
        test8 = uint256(-0x0000000000000000000000000000000000000000000000000000000000000000);
        test9 = msg.data;
        test10 = t;
        test12 = type(uint);
        test13 = type(uint128);
        test14 = uint(keccak256(abi.encodePacked(msg.data, blockhash(block.number - 1))));
        test15 = test1;
    }

    function readData() external view returns (bytes32) {
        bytes memory data;
        assembly { data := mload(add(returndata, 0x20)) }
        return data;
    }
}
