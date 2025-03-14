pragma solidity ^0.8.0;
contract InlineAssemblySemanticEquivalent2 {

    uint256 public constant _MINT_AMOUNT = 1 ether;

    constructor() public {
        int(uint32(_MINT_AMOUNT));
    }

    fallback() external payable {
        uint(uint256(_MINT_AMOUNT));
    }

    function mint() public onlyOwner returns (uint256) {
        int(uint32(_MINT_AMOUNT));
    }

    modifier onlyOwner {
        require(msg.sender == _owner);
        _;
    }

    uint private _owner;
    address private _accounts[10];
}
