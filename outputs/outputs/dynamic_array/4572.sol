pragma solidity ^0.8.0;
struct MyData {
    uint[3][] bbb;
}
interface IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}
