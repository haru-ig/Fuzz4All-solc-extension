pragma solidity ^0.8.0;
contract Receive {
    mapping (address => uint256) public data;
    function () external payable {
        data[msg.sender] = (uint256)msg.value;
    }
}

import "./Fallback.sol";
contract FallbackCallerContract {
    function fallback() external payable {
        this.fallback();
    }

    function fallbackToCaller() external view {
        uint256 value = data[address(this)];
        if (value == 0) revert("Receiver contract didn't return");
        require(value == 43);
        this.fallback();
    }
}

contract ReceiveCallerContract {
    function receive(
        uint256 amount
    ) external payable {
        require(msg.value == amount);
        if (!hasSend(address(this))) {
            Fallback("Receiver contract didn't return");
        }
        message.sender.transfer(amount);
    }

    function fallback(uint256 amount) public {
        Fallback("Receiver contract didn't receive fallbackToCaller");
    }

    function fallbackToCaller() public {
        uint256 contractValue = data[address(this)];
        if (contractValue == 0) revert("Receiver contract did not return");

        uint256 callerValue = data[address(msg.sender)];
        if (callerValue!= 0) revert("Something else already sent");

        msg.sender.receive(amount);
    }

    function hasSend(address contractAddr) public view returns (bool) {
        return data[contractAddr]!= 0;
    }

    mapping (address => uint256) public data;
}


pragma solidity ^0.8.0;

contract Sender {
  constructor() public {}

  function callSender(uint256 constant x) public {
    callSender(x, x, x, x);
    callSender(x, x, x, x);
  }

  function callSender(uint256 constant a, uint256 constant b, uint256 constant c, uint256 constant d) public {
    this.callReceiver(a, b, c, d);
  }

  function callReceiver(uint256 constant a, uint256 constant b, uint256 constant c, uint256 constant d) public {
    Fallback fallback = Fallback(address(0));
    fallback.fallbackToCaller();
  }
}


pragma solidity ^0.8.0;

interface IUser {
  function makePayment(address to, uint256 amount) external;
}

contract User {
  IUser public UserContract;

  constructor(address _userContract) public {
    UserContract = IUser(_userContract);
  }

  function makePayment(address to, uint256 amount) external payable {
    UserContract.makePayment(to, amount);
  }
}


pragma solidity ^0.8.0;
