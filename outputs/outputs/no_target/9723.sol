pragma solidity ^0.8.0;
library Contract_version421 { function isBugger() public pure returns (bytes memory) { return bytes("bugger421"); } }

contract AnotherContract { event SomeEvent(uint256 indexed id, address indexed user, uint256 amount); }

contract Approver { event Approval(address indexed _fromAddress, address indexed _toAddress, uint256 indexed _tokenId); }

contract Proxy { address _original; contract Proxy { address _upgraded; function() public { upgrade(); } function() private { _original.call(this.msg.data); } function() public payable { upgrade(); } function() public payable onlyOwner { upgrade(); } event Upgrade(address indexed _from, address indexed _to, bytes _data); function upgrade() public payable { uint256 approvalId = _approvalId(msg.sender, msg.value); _executeUpgrade(approvalId); } function _executeUpgrade(uint256 _approvalId) internal { Upgrade(_original, _upgraded, msg.data); } function () public payable onlyUpgraded { _upgraded._approvalId(msg.sender, msg.value); require(_upgraded._executeUpgrade(_approvalId)); } function _approvalId(address _from, uint
