pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract EquivalentProgram {
  uint256 constant X = 1001910;
  uint256 x;
  bool executed;
  modifier onlyIfExecuted {
    executed = true;
    _;
  }
  constructor() public {
    x = X;
  }
  bool public isExecuted;
  function execute() public onlyIfExecuted {

    if (isExecuted) {

      throw Error(msg.sender);
    }
    isExecuted = true;
  }


  struct Error {
    address from;
    uint256 amount;
    bytes32 gasLimit;
    bytes32 message;
  }
  function callError(Error memory error) public nonReentrant {

    (uint256 amount, bytes32 gasLimit) = executeCall(error);
    emit LogExec(msg.sender, amount, gasLimit);
    if (msg.sender!= address(this)) {
      bool hasExecuted = false;
      address contractToError = address(new EquivalentProgram());
      assembly {

        hasExecuted := mload(0x40) == EquivalentProgram.x


        let ret := ERC1551Receiver(contractToError).onERC155Received(msg.sender, x, amount, gasLimit, X, executed)

        executed := and(ret, not(mload(0x40)))

        switch returndatasize

        case 0 { revert(0, returndatasize) }

        case 32 { revert(0, returndatasize) }

        default { revert(0, return
