pragma solidity ^0.8.0;
interface IERC165(address interfaceId_) external view returns (bool) {
}
contract Greeter is IERC165 {
	bytes4 internal constant _INTERFACE_ID_ERC165 = 0x01ffc9a7;
	constructor(string memory name_, string memory symbol_) {
	    if (name_!= "") _name = name_;
	    if (symbol_!= "") _symbol = symbol_;
    }
    mapping (bytes4 => bool) private _supportsInterface;
    bytes4 private constant _INTERFACE_ID_ERC165 = 0x01ffc9a7;


    function supportsInterface(bytes4 interfaceId) external view returns (bool) {
	return _supportsInterface[_INTERFACE_ID_ERC165];
    }

    string private _name;
    string private _symbol;

    string public name() view returns (string memory) {
      return _name;
    }

    string public symbol() view returns (string memory) {
      return _symbol;
    }
}
