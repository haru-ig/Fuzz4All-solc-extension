pragma solidity ^0.8.0;
contract MyApp {
    MyData d;
    IERC165 supportsInterface(bytes4 interfaceId) external pure returns (bool) {
        require(interfaceId == type(IERC165).interfaceId);
        return true;
    }
}
