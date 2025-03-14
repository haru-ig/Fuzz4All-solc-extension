pragma solidity ^0.8.0;
contract Fallback {
  event Executed(uint256);

  function execute(uint256 _a)
    public
    payable
    virtual
    fallback {
      emit Executed(_a);
    }
}
