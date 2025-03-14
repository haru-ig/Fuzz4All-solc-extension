pragma solidity ^0.8.0;
contract SimpleExample16 {
    address x;
    uint num = uint(uint256(uint160(0x266d)));
    bytes memory _data;
    function doSomething(bytes memory _data) public { x = msg.value; assert(msg.value == 0x266d); }
}
