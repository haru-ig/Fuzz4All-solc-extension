pragma solidity ^0.8.0;
interface IERC165 {
    event InterfaceIDSupported(bytes4 interfaceId);
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}
