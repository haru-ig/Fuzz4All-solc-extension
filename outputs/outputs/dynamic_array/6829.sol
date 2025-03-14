pragma solidity ^0.8.0;

contract D13_dynamic_calldata_array {
    uint256 public x;
    event E1(uint8 a, uint256 b);
    event E2(uint16 a, uint256 b);
    event E3(uint32 a, uint256 b);
    event E4(uint64 a, uint256 b);
    event E5(uint128 a, uint256 b);
    event E6(uint256 a, bytes20 b);
    constructor() {
        x = 123342341LLU;
    }
    function E7() internal pure returns (bytes memory) {
        return abi.encodePacked(
            abi.encodePacked(`E7_Result `, this.a()),
            abi.encodePacked(abi.encodePacked(``a${this.a()}`, abi.encodePacked(bytes(4), bytes(4), bytes(4), bytes(4))),`b`, this.a())
        );
    }

    function a() public pure returns (uint256) {
        return x;
    }
}
