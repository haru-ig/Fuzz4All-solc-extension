pragma solidity ^0.8.0;
contract Test8 {
    bytes32[][] a2;
    constructor(){
        a2[1] = new bytes32[](1);
        bytes32[] memory i4;
        i4[1] = bytes32(0x567856785678499c000);
        bytes32[] memory i5 = i4;
        bytes32[] memory i6;
        i6 = i5;
        i5 = i6;
    }
    function s() public pure returns (uint) {
        return 0;
    }
}
