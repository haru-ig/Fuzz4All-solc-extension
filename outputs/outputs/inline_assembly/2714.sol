pragma solidity ^0.8.0;
import "@openzeppelin/contracts/utils/introspection/ERC165Checker.sol";
contract A is ERC165Checker {
    function supportsInterface(bytes4 interfaceID) public pure virtual override returns (bool) {
        return _ERC165_CHECKER_STORAGE_slot.supportsInterface(interfaceID);
    }
}
