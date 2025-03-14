pragma solidity ^0.8.0;
contract Mutated { function test() public {   } }


contract Mutated2 { function test() public {
    uint256[4] memory x;
    x[2] = 23;
    x.length = 2;

    x.length = 3;
    } }




pragma solidity ^0.8.7;
contract Mutated3 { function test() public {
    uint256[] memory x;
    uint256[] memory y;

    x.length = 1;
    y.length = 0;

    for (uint256 i = 0; i < 10; ++i) {
      function f() public {}
      emit Call (address(this), this, function() payable() { f(); }, i);
    }
    y.length++;
    } }
