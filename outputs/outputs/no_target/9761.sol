pragma solidity ^0.8.0;
contract ContractWithStatefulFunctions is IERC1155 {
    function mset(uint256 id_1, uint256 id_2, uint256 id_3)public {
        uint256 _id = id_1 * 1000 + id_2 * 100 + id_3;
        require(_id % 1000 == 0);
    }
}
contract ContractWithStatefulFunctions2 is IERC1155,ERC1155Compliant {
    function mint(address _to)external {
        require(ownerOf(idForNonfungibleToken(msg.sender)) == 0);
        require(balanceOf(address(this), msg.sender) == 1000);
        uint256 id = _idFor(msg.sender);
        _mint(msg.sender, 0, 0);
        uint256 current_totalSupply  = totalSupply();
        uint256 new_totalSupply = totalSupply() + 1;
        uint256 id = uint256(_id);
        totalSupply_[int(id)] = new_totalSupply;
    }

    function _idFor(address account)internal pure returns (uint256) {
        uint256 _id = uint256(keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", account)));
        return _id % 20000;
    }
}
interface IERC1155 {
    event TransferSingle(address indexed from, address indexed to,uint256 indexed tokenId,uint256 value,bytes data);
    event TransferBatch(address indexed from,address indexed to,uint256[] tokenIds,uint256[] values,bytes data);

    function ownerOf(uint256 tokenId) external view returns (address owner);

    function balanceOf(address owner,uint256 id) external view returns (uint256 balance);

    function totalSupply() external view returns (uint256 totalSupply);

    function tokenURI(uint256 id) external view returns (string memory);

    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        uint256 value
    )external returns (bool success);

    function safeBatchTransferFrom(address[] calldata from,address[] calldata to,uint256[] calldata tokenId,uint256[] calldata value)external returns (bool success);

    function transferSingle(
        address from,
        address to,
        uint256 tokenId,
        uint256 value,
        bytes memory data
    )external;

    function transferBatch(
        address from,
        address to,
        uint256[] calldata tokenIds,
        uint256[] calldata values,
        bytes memory data
    )external;
}
