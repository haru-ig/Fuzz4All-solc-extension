pragma solidity ^0.8.0;
contract BBC { function B(uint256 a) public pure {uint256 b = (((1000000) - 1) << 1));a = 10 + ((uint256)2 ** b); } }

ERC721 owner;
contract Token {
    mapping (address => bool) _isApprovedForAll;
    mapping (uint256 => bool) _isApproved;
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint)) public allowances;
    uint160 _creator;

    constructor () public {
        _creator = msg.sender;
    }


    function creator() public view returns (address);


    function mint(address _to) public payable;


    function totalSupply() public view returns (uint256);


    function balanceOf(address _owner) public view returns (uint256);


    function transferFrom(address _from, address _to, uint256 _value) public returns (bool);


    function approve(address _spender, uint256 _value) public returns (bool);


    function getAllowance(address _owner, address _spender) public view returns (uint);


    function setApprovalForAll(address _address, bool _spender) public returns (bool);
