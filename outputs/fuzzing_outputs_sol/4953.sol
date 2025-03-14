pragma solidity ^0.8.0;
contract Caller {
    function test() public {
        NoFallback(address(this).balance, 0x00)
      };
}
