pragma solidity ^0.8.0;
contract emulator11 {
  uint z = 10000000000000000;
  function test1() public returns(uint) { uint a; for (uint i = 100; i < 4000; i ++) { a = a * 1000 + 100; }
  z = z * 1000 + a * 10000; }
  function test2() public returns(uint) { uint a; for (uint i = 100; i < 4000; i ++) { a = a * 1000 + 100; }
  z = z * 1000 + a * 10000; } }



pragma solidity ^0.6.0;


abstract contract Context {
    function _msgSender() internal view virtual returns (address payable) {
        return msg.sender;
    }
}



pragma solidity ^0.8.0;

import "../utils/Context.sol";
