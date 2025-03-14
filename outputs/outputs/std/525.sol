pragma solidity ^0.8.0;
interface IERC721 is IERC712 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address owner) external view returns (uint256 balance);
    function ownerOf(uint256 tokenId) external view returns (address owner);
    function approve(address to, uint256 tokenId) external returns (bool ok);
    function getApproved(uint256 tokenId) external view returns (address owner);
    function setApprovalForAll(address operator, bool approved) external returns (bool ok);
    function isApprovedForAll(address owner, address operator) external view returns (bool ok);
    function safeTransferFrom(address from, address to, uint256 tokenId) external returns (bool ok);
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory data) external returns (bool ok);
    function transferFrom(address from, address to, uint256 tokenId) external returns (bool ok);
    function transferFrom(address from, address to, uint256 tokenId, bytes memory data) external returns (bool ok);
    function destroy(uint256 tokenId) external returns (bool ok);

    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
    event Mint(address indexed to, uint256 indexed tokenId);
    event MintFinished(uint256 indexed tokenId);
    event Destroy(uint256 indexed tokenId);
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
}

pragma solidity ^0.8.0;
contract IItemContract {

    struct Item{
    address ownerAddress;
    string ownerAddressString;
    uint256 item_number;
    string item_name;
    uint256 item_weight;
    uint256 item_color;
}

    uint256 item_total_number_of_items = 10;
    IItemContract.Item[] items = new IItemContract.Item[](item_total_number_of_items);

    constructor() {
        items[0].item_number = 0;
        items[0].item_color = 0;
        items[0].item_weight = 0;
        items[0].item_owner = msg.sender;
        items[0].item_name = "item #1";

        delete items[0].item_owner;
    }


    mapping (address => mapping (uint256 => bytes32)) _balances;

    function transferOwnership(address _to) public {
        _balances[msg.sender][item_total_number_of_items - 1] = 0;
        items[item_total_number_of_items - 1].ownerAddress = _to;
        if (_balances[
