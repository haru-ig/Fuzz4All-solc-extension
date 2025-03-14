pragma solidity ^0.8.0;
interface IWrapper {
    function getWrapperDataSize() external pure returns (bytes32 value);
    function getWrapperData() external pure returns (address data);
    function getInterfaceAddress() external pure returns (address interfaceAddress);
}
struct Proxy {
    bytes32 value;
    address data;
    Proxy(bytes32 v, address d) public {
        value = v; data = d;
    }
}
contract IERC165 {
    function supportsInterface(bytes4 interfaceId) internal view returns (bool);
}
