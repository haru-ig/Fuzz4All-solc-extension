pragma solidity ^0.8.0;



contract ERC165
{
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

pragma solidity ^0.8.0;
contract C is I, ERC165
{
    mapping(bytes3 => bool) private supportsInterfaces;

    constructor () {
        supportsInterfaces[type(I).selector] = true;
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return supportsInterfaces[interfaceId];
    }

    function foo() public {

    }
}
contract D is C
{
    mapping (bytes4 => bool) internal supportsInterfaces_;

    constructor () {
        supportsInterfaces_[type(I).selector] = false;
        supportsInterfaces_[type(ERC165).selector] = true;
    }
}
