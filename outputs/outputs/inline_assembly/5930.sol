pragma solidity ^0.8.0;
address payable payable1 = payable(address(0x1234));
function test2() public pure {
    payable1.send(1 ether);
}
