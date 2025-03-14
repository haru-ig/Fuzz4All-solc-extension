pragma solidity ^0.8.0;

contract a {
    i x;
    constructor(address _x) {
        x = i(_x);
    }
}

pragma solidity 0.8.0;
contract abiv2
{
    address internal _owner;
    address internal _resolver;
    bytes32 internal _contractCreated;
    uint internal _contractNonce;
    mapping(address => uint256) internal _valueMapOwner;
    mapping(address => bool) internal _activeAccountMapOwner;
    mapping(bytes32 => address) internal _createdAccountMap;
    mapping(address => bool) public _activeAccountMap;
    mapping(bytes32 => address) public _createdAccountMap;
    struct Transfer {
        address indexed _from;
        address indexed _to;
        uint16 _value;
        bytes32 _contractAddress;
        uint256 _timestamp;
        bytes32 _signature;
    }
    Transfer public transfer;
    bool public _transferEnabled;
    event Transfer(address indexed from, address indexed to, uint256 value);
    event TransferFrom(address indexed from, address indexed to, uint256 value);
    event ContractCreated(string contractName, address _owner, uint _contractNonce);
    event AccountRegistered(string accountName, address _newAddress);
    event AccountActivated(string accountName, address _newAddress);
    event ContractActivated(string contractName, address _owner);
    constructor(address _owner) {
        this._transferEnabled = true;
        _createdAccountMap[bytes32(abi.encodePacked(this.constructor.name))] = address(this);
        emit ContractCreated(abi.encodePacked(abi.decode(bytes32(abi.encodePacked(this.constructor.name))), (string)));
        _activeAccountMap[address(this)] = true;
        _create(_owner);
        emit ContractActivated(abi.encodePacked(abi.decode(bytes32(abi.encodePacked(this.constructor.name))), (string)), account(0xde1b0b250de8df32f9e6a0f5a1078301276e7d87, "0xde1b0b250de8df32f9e6a0f5a1078301276e7d87").contract());
        _resolver = account(0x4ecfd62e5f8c1c60e5c20edaf46cc8d53679e6d2, "0x4ecfd62e5f8c1c60e5c20edaf46cc8d53679e6d2");
        emit AccountRegistered("name", _owner);
    }
    function _create(address _address) private {


        _assert(type(_createdAccountMap[
