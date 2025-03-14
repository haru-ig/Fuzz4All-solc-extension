pragma solidity ^0.8.0;
contract IERC165 { function supportsInterface(bytes4 interfaceId) view returns (bool);         function supportsInterface(bytes4 interfaceId) public view virtual returns (bool) {} }

pragma solidity ^0.8.0;
interface IERC165 { function supportsInterface(bytes4 interfaceId) view returns (bool);
pragma solidity ^0.8.0;
interface IERC165 { function supportsInterface(bytes4 interfaceId) public view virtual returns (bool); }
