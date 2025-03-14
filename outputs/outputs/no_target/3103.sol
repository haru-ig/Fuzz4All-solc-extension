pragma solidity ^0.8.0;
contract third{
    uint public x;
    function h() public view returns(uint) {
        bool y;
        return x & 6**5000;
    }
}

pragma solidity ^0.8.0;


contract first {
    uint public x;
    function f() public {
      uint d;
      for (uint256 i = 4; i < 20; i++) {
        x = i + x;
      }
    }
}
