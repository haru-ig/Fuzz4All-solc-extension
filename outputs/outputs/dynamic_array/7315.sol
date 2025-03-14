pragma solidity ^0.8.0;
abstract contract IERC165
{
    bytes4 private constant _INTERFACE_ID_ERC165 = 0x01ffc9a7;


    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool);
}
