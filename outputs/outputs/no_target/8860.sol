pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated6 {
    interface IERC165 {

        function supportsInterface(bytes4 interfaceId) external view returns (bool);

    }

    function supportsInterface(bytes4 _interfaceId) public view virtual override(IERC165, CompatibilityInterface);

    mapping(address => bool) private ERC165Tokens;

    function EquivalentABIv2SemanticsAreMutated6 (
        CompatibilityInterface _compatibilityInterface
    ) public {
        ERC165Tokens[_compatibilityInterface] = true;
    }


    event CompatibilityInterface(bool _tokenUsed);

    function setTokenUsed() public {
        emit CompatibilityInterface(ERC165Tokens[type(CompatibilityInterface)]);
    }

}
