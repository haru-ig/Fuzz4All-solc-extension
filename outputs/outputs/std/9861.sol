pragma solidity ^0.8.0;
contract S10 {
    using S9 for address;
    function f() public pure {
        address a = 0x0_0000_0000_0000_0000_0000_0000_0000_0000;
        address b = 0x0_0000_0000_0123_4567_8901_2345_6789_0123;

        uint a_address = a.balance;
        uint b_address = b.balance;

        uint r = a.balance.squareRoot();
    }
  }
