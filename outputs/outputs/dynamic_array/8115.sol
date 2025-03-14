pragma solidity ^0.8.0;
interface IERC165Token{
   function supportsInterface(bytes4 interfaceID) external view returns (bool);
}

pragma solidity 0.7.6;
contract Token is IERC165Token{
    IERC165Token internal immutable __ERC165;
    mapping(bytes4 => bool) private __supportsInterface_;
}
