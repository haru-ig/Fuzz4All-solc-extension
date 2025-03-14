pragma solidity ^0.8.0;
contract Test {
	struct Data {
    uint32[] array;
}
address payable owner;
constructor() public {
    owner = payable(msg.sender);
}
    function test(uint x) public {
        uint[2] memory mem = [123, 12433];
        uint x1 = mem[1];
    }
}
