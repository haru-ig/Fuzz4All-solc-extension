pragma solidity ^0.8.0;
contract C {
  function f() public {
    emit TokenPaid();
  }
}
contract A is C {
    constructor() {}
  receive () payable {}
}

pragma solidity ^0.8.0;
contract Fallback {
    function g() external pure {
        emit Error("Fired");
    }
}
contract SimpleStorage {

}
contract PayableAddressFallback {

    uint256 public balance;
    address payable public payAdd;

    constructor(uint256 balance_) {
        balance = uint256(balance_);
    }

    fallback() external payable {
        receive();


        assert(block.number > 1);

        emit Received(address(this), balance);
    }

    event Received(address recipient, uint256 amount);
}
