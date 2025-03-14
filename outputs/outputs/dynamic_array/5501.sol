pragma solidity ^0.8.0;
contract Test60 {
    address private account;
    uint256 public version;
    function func1() public {
      AccountWithEIP() public;
      account = IERC20(IERC20.totalSupply()).transferVia(0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF, 100);
    }
    function func2() public {
      for(uint256 i; i < 6; ++i) {
          account = IERC20(IERC20.totalSupply()).transferVia(0xDEADBEEFDEADBEEFDEADBEEFDEADBEEFDEADBEEF, 100);
      }
    }
}
