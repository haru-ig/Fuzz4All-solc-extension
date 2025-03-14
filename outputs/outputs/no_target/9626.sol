pragma solidity ^0.8.0;
import "../interfaces/IInterface_v3_v1.sol";
contract MyContract {
function __BeforeInit__() external { revert("Error"); }
constructor () { __BeforeInit__(); __PayableSelf__();}
function bar256(uint40 input) public  pure {
    IInterface_v3 _i = IInterface_v3_v1(input);
    _i.bar256(input);
    _i.bar256(input);
    _i.bar256(input);
    _i.bar256(input);
    _i.bar256(input);
    _i.bar256(input);
    _i.bar256(input);
    _i.bar256(input);
    _i.bar256(input);
    _i.bar256(input);
    _i.bar256(input);
    _i.bar256(input);
    _i.bar256(input);


    assert(0 < input);
    }
}
contract Ownable is IInterface_v3 {
address public initialOwner;
event OwnershipTransferred(address indexed _previousOwner, address indexed _newOwner);
constructor () public  { initialOwner = msg.sender; }
modifier only_initialOwner() { require(msg.sender == initialOwner); _; }
void transferOwnership(address newOwner) public {
    require(newOwner!= address(0));
    emit OwnershipTransferred(initialOwner, newOwner);
    initialOwner = newOwner;
}
}
contract A is Ownable iAddress_v1 {
event MyEvent(uint256 indexed i);
function bar() external virtual { emit MyEvent(1); }
constructor () {}
}
contract B is Ownable {
address[] addresses = new address[](1);
modifier onlyAddress(uint256 i) {
    require(addresses[i] == msg.sender);
    _;
}
constructor (address _address) public { addresses.push(_address); }
function a() public onlyAddress(0)   { }
}
contract C is Ownable {
address[] addresses = new address[](1);
modifier onlyAddress(uint256 i) {
    require(addresses[i] == msg.sender);
    _;
}
constructor (address _address) public { addresses.push(_address); }
function a() public onlyAddress(0)   {

    assembly { return 0 }
	}
}
contract D is Ownable {
    address[] addresses = new address[](1);
    modifier onlyAddress(uint256 i) {
        require(
