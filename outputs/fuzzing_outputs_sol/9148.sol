pragma solidity ^0.8.0;
contract SendEtherCaller5 {
  contract Inner {

    receive() external payable {
    }
  }
  Inner _inner;
  constructor(Inner memory _inner) {
  }

  receive() external payable {
  }
}
