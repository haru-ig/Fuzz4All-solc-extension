pragma solidity ^0.8.0;
interface IErc20 {
    function transferFrom(address, address, uint256, bytes calldata) external returns (bool);
    function tokenMetadata(uint256)
        external
        view returns (
            string memory symbol,
            string memory name,
            string memory image
        );
    function burnAndTransfer(address, uint256) external;
}
pragma solidity ^0.8.0;
interface IErc20 {
    function burnAndTransfer(address, uint256) external;
}
