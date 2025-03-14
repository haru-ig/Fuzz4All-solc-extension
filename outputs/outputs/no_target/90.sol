pragma solidity ^0.8.0;
interface IOwnable {
    function owner() external view returns (address);
    function transferOwnership(address newOwner) external;
}

import "./IERC223.sol";
import "./IOwnable.sol";
contract ReentrancyGuard {
  address public owner;
  mapping(address => bool) private approvedAddresses;
  uint256 private currentRequest = 0;

  constructor () {
    owner = msg.sender;
  }

  modifier onlyOwner() {
    require(isOwner(), "ReentrancyGuard", "ReentrancyGuard: caller is not the owner");
    _;
  }

  modifier onlyApproved() {
    require(isApproved(msg.sender), "ReentrancyGuard", "ReentrancyGuard: caller is not approved");
    _;
  }

  function isOwner() public view returns (bool) {
    return msg.sender == owner;
  }

  function isApproved(address spender) public view returns (bool) {
    return approvedAddresses[spender];
  }

  function approve(address spender, uint256 value) public {
    require(isApproved(msg.sender), "ReentrancyGuard", "ReentrancyGuard: caller is not approved");
    approvedAddresses[spender] = true;
  }

  function requestApproval(address _spender) public {
    currentRequest++;

    address spender;
    if (approvedAddresses[_spender] && currentRequest!= uint256(0)) {
      assembly {
        spender := mload(add(0x20, 0x04))
      }
    } else {
      spender = _spender;
    }

    require((isApproved(msg.sender) || isOwner()), "ReentrancyGuard", "ReentrancyGuard: senders needs to be approved or the owner");

    approvedAddresses[spender] = true;
  }

  function cancelRequest(uint256 requestId) public {
    require(currentRequest > 0, "ReentrancyGuard", "ReentrancyGuard: cannot cancel a pending request");
    require(currentRequest == requestId + 1, "ReentrancyGuard", "ReentrancyGuard: request not found");
    delete approvedAddresses[msg.sender];
    currentRequest = maxRequest() + 1;
  }

  function maxRequest() public view returns (uint256) {
    return uint256(2 ** 256 - 1) / currentRequest - 1;
  }
}
