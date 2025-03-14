pragma solidity ^0.8.0;
interface ERC165
{

    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}
pragma solidity ^0.8.0;
contract test
{
    uint256 myUint1;
    uint32 myUint2;
    uint40 myUint3;
    uint512 myUint4;
    uint256[] memory myUintArray1;
    uint32[] memory myUintArray2;
    uint40[] memory myUintArray3;
    uint512[] memory myUintArray4;
    uint256[] = new uint256[](1);
    uint32[] = new uint32[](1);
    uint40[] = new uint40[](1);
    uint512[] = new uint512[](1);
    function myTest() public view { }
    function getTest() public view returns (uint256) {
        return 1;
    }
}
contract test2 is ERC165 {



    fallback() external {

        require(supportsInterface(0x01ffc9a7), "IERC165: ERC165 contract does not implement ERC165 interface!");
    }
    function supportsInterface(bytes4 interfaceId) external pure override returns (bool) {
        return true;
    }
}
