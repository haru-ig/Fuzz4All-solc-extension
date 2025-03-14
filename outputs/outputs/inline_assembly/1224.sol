pragma solidity ^0.8.0;
contract BetterProgramV2{
  bool executed_v2;
  IERC20 token;
  function create(IERC20 token_ptr) public {
    token = token_ptr;
  }


  modifier onlyIfExecuted_v2 {
    executed_v2 = true;
    _;
  }
  function execute_v2() public onlyIfExecuted_v2
  {
    executed_v2 = false;
  }
  function mutate_v2() public onlyIfExecuted_v2
  {
    token.approve(address(token), 1);
  }
}
