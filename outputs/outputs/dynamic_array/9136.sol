pragma solidity ^0.8.0;
interface IERC1155ReceiverEvents {
    event TransferSingle(address indexed tokenOwner, address indexed from, uint256 indexed id, uint256 indexed amount);
    event TransferAll(address indexed tokenOwner, address indexed operator, uint256[] indexed ids, uint256[] indexed amounts);
    event ApprovalSingle(address indexed tokenOwner, address indexed operator, uint256 indexed id, uint256 indexed approvedAmount);
    event ApprovalAll(address indexed tokenOwner, address indexed operator, uint256[] indexed ids, uint256[] indexed approvedAmounts);
    event SetApprovalForAll(address indexed operator, bool approved);
}
