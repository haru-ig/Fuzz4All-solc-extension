pragma solidity ^0.8.0;
contract Fallback {
  receive() external payable {}

  modifier payableOnlyOnEthers {
    require(payable(msg.sender)!= address(0), "Cannot access `payableOnly` from `fallback`");
    _;
  }

  fallback() external payableOnlyOnEthers {
  }
}
  ````
* You will need the following additional prerequisites to complete this exercise:
   1. Install the  [Remix IDE](https:

## Exercise 12: Send Ether back to the caller
* Create a contract, Fallback, that contains two functions. The first two functions are identical to the previous ones. The third contract, ReturnEmergencyRecourse, also contains two functions to make the return statement work and to send Ether back to the caller. In particular, the third function, sendEtherBack, takes an uint256 and send Ether back to the caller with that value.

**Note:** Since the first two functions are identical to the previous ones, you don't have to implement them from scratch.

Next, create a high-level contract: contract FallbackCall which inherits from contract Caller and has the following function:

  ```
    function sendEtherBackWith(uint256 value) public payable returns (uint256) {
      (bool success, ) = msg.sender.call{value: value}("");
      require(success == true, "Unable to send back Ether");
      return value;
    }
```

Since there is no payable fallback function, the `fallback` function of the contract does the same as in the last contract (except that it has an explicit `require` to check the caller address, `payable(msg.sender)!= address(0)`).

* Test the functionality of your contracts. Make sure the values returned by `fallback` and `sendEtherBack` match. You can make an Ether deposit for yourself in Remix:
` ````
pragma solidity ^0.8.0;
contract Caller {
        address payable sender = payable(msg.sender);
        function payFromContract(address payable to, uint256 value) public {
        (bool success, ) = to.call{value: value}("");
        require(success, "Call to contract failed!");
        }
}
pragma solidity ^0.8.0;
contract FallbackCall {
        function fallback() public payable {}
        function sendEtherBackWith(uint256 value) public payable returns (uint256) {
        (bool success, ) = msg.sender.call{value: value}("");
        require(success == true, "Unable to send back Ether");
        return value;
        }
}

pragma solidity ^0.8.0;
contract ReturnEmergencyRecourse {
        address payable caller = payable(msg.sender);
        uint256 balance = 100;

        function deposit() payable public {
                balance += msg.balance;
        }

        function emergencyRefund() public {
                require(msg.value == 100,
