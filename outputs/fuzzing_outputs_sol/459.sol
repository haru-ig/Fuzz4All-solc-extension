pragma solidity ^0.8.0;
contract MutatedCaller {
    receive() external {}
}
pragma solidity >= 0.6 <0.9;
contract Caller {
    receive() external {}
}
pragma solidity >= 0.6 <0.9;
contract C {
    address _contract;
    Constructor() {
      _contract = new Caller();
    }
    uint256 getValue() public view {
        return 0;
    }
}
