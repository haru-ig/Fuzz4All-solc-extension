pragma solidity ^0.8.0;
import "./ContractWithFallbackExample.sol";
contract ModeratedMutatedCallContractWithFallbackExample is CallContractWithFallbackExample {
  address payable public moderatedCaller;
  modifier onlyModeratedCaller {
    require(msg.sender == moderatedCaller, "must be moderated caller");
    _;
  }
}
