pragma solidity ^0.8.0;
import "https://github.com/Luffy32/solidity-contracts/blob/master/contracts/Caller.sol";
contract CallerMutated is Caller {
  receive() external payable { }
}
