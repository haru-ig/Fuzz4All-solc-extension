pragma solidity ^0.8.0;
interface Mover {
  function foo(address _to) external;
}

contract CallerFactory {
  function createCaller(Caller _caller) public pure returns(Mover) {
    Mover _callerToReturn = new Mover(_caller);

    return _callerToReturn;
  }
}

contract CallerTest {
  function main() public payable {

    CALLER(CallerFactory.createCaller(CALLER(0x0))).foo().value(1 ether)();

    bytes32 transactionHash;
    (transactionHash,) = payable( CALLER(0x0)).foo.value(1 ether)();
  }
}
