pragma solidity ^0.8.0;
contract EtherTester {
    receive() external payable {throw;}
}
contract SomeContract {
    fallback() external payable {address(this).call{value: 2 ether}(0x000000000000000000000000000000000000055);}
}
