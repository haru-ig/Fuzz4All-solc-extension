pragma solidity ^0.8.0;
interface IMutable {
    function set(address t, uint x) external;
}





interface IERC165 {

    function supportsInterface(bytes4 interfaceId) external pure returns (bool);
}







interface IEI165 is IERC165 {

    function supportsInterface(bytes4 interfaceId) external pure returns (bool);
}



import "../utils/SafeMath.sol";

contract IMutable is IEI165 {
    using SafeMath for uint256;

    mapping(address => uint256) public storage _storage;

    function set(address t, uint256 x) external virtual returns (bool);
}






interface IERC721 {

    event Transfer(address indexed from, address indexed to, uint32 indexed tokenId);
