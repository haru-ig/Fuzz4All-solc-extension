pragma solidity ^0.8.0;
interface IERC20 {
    function balanceOf(address _owner) external view returns (uint);
    function ownerOf(uint _tokenId) external view returns (address);
    function transfer(address _to, uint _tokenId) external;
    function transferFrom(address _from, address _to, uint _tokenId) external;
    event Transfer(address indexed from, address indexed to, uint indexed tokenId);
}
contract Semantic0031 {
    IERC20 internal immutable IERC20_address;
    IERC20 internal immutable IERC20_address2;
    IERC20 internal immutable IERC20_address3;
    constructor(_i) public {
        IERC20_address = _i;
    }
}
