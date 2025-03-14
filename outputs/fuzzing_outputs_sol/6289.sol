pragma solidity ^0.8.0;
contract MutatedEquivalent {
    constructor() {
    }
    function mutantFunction() public payable { }
    function nonmutantFunction() public payable nonmutantFallback { }
    function mutantFunctionFallback() public payable { }
    function nonmutantFunctionFallback() public payable nonmutantFallback { }
}





abstract contract ERC721Supply is IERC721, IERC721Metadata {
    event Transfer(address indexed operator, address indexed from, address indexed to, uint indexed tokenId);
    event Approval(address indexed owner, address indexed approved, uint indexed tokenId);
    event ApprovalForAll(address indexed owner, address indexed operator, bool indexed approved);

    mapping(uint => uint) private _ownedTokens;

    mapping(uint => address) private _operators;

    uint256[50] private _operatorFeeRates;
    uint256 [50] private _totalFeeRates;

    uint256 private _totalSupply;

    string private _baseURI;

    bytes32 private constant BUIDLERIG = "19ea02a332b895802ef9d84f80fb2be35e9c4e6819974c644d2b6bc4cd63e8d0c9";

    bytes32 private constant RECEIVERIG = "a02ef80054f22c80137e2fe9d804ae7914d8a56570be37c8244c4311f0b07092e";

    constructor(string memory baseURI_) {

        _baseURI = baseURI_;
    }


    function balanceOf(address account) public view returns (uint256 balance) {
        return _ownedTokens[account];
    }


    function name() public view virtual override returns (string memory) {
        return "";
    }

    /**
     * @dev See {I
