pragma solidity ^0.8.0;
interface SolidityContract {

    function notMutated() external view returns (uint256);

    function notMutatedNotMutated() external view returns (uint256);

    function notMutatedNotMutatedNotMutated() external view returns (uint256);

    function getAddressOfArray(uint256[] storage array) public view returns (address);

    function getAddressOfNotArray(NotMutated[] memory array) public view returns (address);
}
