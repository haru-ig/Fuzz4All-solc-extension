pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
import "contract.sol";

contract ModifyPreviousGeneration {
  event Message(address indexed sender, uint256 amount);
  contract EtherFallback {
    modifier checkEth(address sender) {
      require(msg.value >= address(this).balance, "Not enough ether in the contract");
      sender.transfer(msg.value);
      _;
    }
    function fallback(
      address,
      address recipient,
      uint256 amount
    ) public payable override checkEth {
      recipient.transfer(amount);
      emit Message(msg.sender, amount);
    }
  }
  contract Contract {
    constructor(address fallbackAddress) {

    }
    function fallback(address, address, uint256) public pure override {


    }
  }
  function main() public payable returns (uint256) {
    require(address(new Contract(address(new EtherFallback))).balance == address(tx.origin).balance, "Balance is wrong");
    address originContractAddress = address(new Contract(address(new EtherFallback)));
    (bool success, uint256 amount) = originContractAddress.call{value : msg.value }("");
    require(success, "Transaction failed");
    return amount;
  }
}
