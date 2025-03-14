pragma solidity ^0.8.0;
contract G {
    event E();
    address public a;
    G private constant myG = G(value);
}



pragma solidity ^0.8.0;


contract Base {
    bytes32 internal constant __Base_tag__ = "0x57cd43e4c21792908ebfd3a0aaac2a5ce99d4ec46ee89f785e695c9d3d55ef0";
}



pragma solidity ^0.8.0;


interface IERC721 {

    event Transfer(
        address indexed from,
        address indexed to,
        uint256 indexed tokenId
    );


    event Approval(
        address indexed owner,
        address indexed approved,
        uint256 indexed tokenId
    );


    event ApprovalForAll(
        address indexed owner,
        address indexed operator,
        bool approved
    );


    function balanceOf(address owner) external view returns (uint256 balance);


    function tokenURI(uint256 tokenId) external view returns (string memory);


    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;


    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external;

    /**
     * @dev Gives permission to `to` to transfer
