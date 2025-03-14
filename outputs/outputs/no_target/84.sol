pragma solidity ^0.8.0;
import "./ERC223.sol";
contract TestERC223 is ERC223 {
  modifier onlyApproval() {
    if (msg.sender == _msgSender()) _
    emit Approval(_msgSender(), msg.sender, msg.data.length);
    _;
  }
}
