pragma solidity ^0.8.0;
contract InlineAssembly {
    bytes memory p1 = "abc";
    uint constant c = 0x00;
    bytes memory p2 = keccak256(abi.encodePacked(p1, c));
    uint x;
    function multiply(uint z) public returns (uint) {
    if (z == 1) {
        x =  10;
    } else {
        x =  z * c;
    }
    return x >= 1 + c?  x : x + c;
}
}
