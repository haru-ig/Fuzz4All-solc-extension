pragma solidity ^0.8.0;
contract Mover {
    struct State {
      uint256 balance;
    }
    State state;
    modifier onlyOwner {
      require(msg.sender == 0x85795FAc959e74458d1b25A8A55008E4518D2688,
      "Only owner");
      _;
    }
    modifier canBeTrappedTo {
      state.balance = 1000;
      require(false, "Cannot trap");
      _;
    }

    function() external onlyOwner canBeTrappedTo payable returns (address payable) {
      return msg.sender;
    }
}
