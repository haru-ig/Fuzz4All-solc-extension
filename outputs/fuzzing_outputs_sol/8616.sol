pragma solidity ^0.8.0;
interface IERC2981 {
    function defaultFallback() external;
}
contract Caller {
    IERC2981 immutable immutableContract;
    fallback() public pure {
        immutableContract.defaultFallback();
    }
    constructor(address contract_) {
        immutableContract = IERC2981(contract_);
    }
    receive() public pure {
        address caller = msg.sender;
        if (amounts[caller] >= 123) {
            msg.sender.transfer(123 * amounts[caller]);
        }
    }
}
contract MutatorFallback {
    function receive()
      public
      payable
      virtual
      override(IERC2981, fallback)
    { }
}
