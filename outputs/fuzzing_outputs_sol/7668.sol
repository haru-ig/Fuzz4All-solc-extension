pragma solidity ^0.8.0;
contract Simple
{
    address public contractAddress;
    NonMutatedSemanticEquivalence immutable nonMutatedAddress;
    bool immutable booleanAddress;
    uint256 immutable uint256Address;
    bytes4 immutable bytes4Address;

    constructor()
    {
        address contractAddress = msg.sender;
        NonMutatedSemanticEquivalence nonMutatedAddress = new NonMutatedSemanticEquivalence();
        booleanAddress = true;
        uint256Address = 42;
        bytes4Address = bytes4(keccak256(abi.encodePacked("bytes4")));
        assert(contractAddress!= address(0x0));
        assert(nonMutatedAddress.mutateAddress() == contractAddress);
        assert(nonMutatedAddress.mutateBool() == true);
        assert(nonMutatedAddress.mutateCall() == 42);
    }

    function getContractAddress() public pure returns (address) {
        address contractAddress = msg.sender;
        NonMutatedSemanticEquivalence nonMutatedAddress = new NonMutatedSemanticEquivalence();
        bool booleanAddress = true;
        bytes4 bytes4Address = bytes4(keccak256(abi.encodePacked("bytes4")));




	require(contractAddress!= address(0x0));
	return contractAddress;
	}
}
