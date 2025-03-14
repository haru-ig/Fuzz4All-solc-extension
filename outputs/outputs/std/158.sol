pragma solidity ^0.8.0;
interface IERC1155Mintable {
    function mintForTransferFrom(uint tokenId, address to, uint amount, bytes memory data, string memory override sig) external returns (bytes memory);
}

pragma solidity ^0.8.0;
contract Contract {
    function mint_if_bigger(uint value, uint total, uint min) public view virtual returns (uint) {



    }
}
