pragma solidity ^0.8.0;
contract SafeMath {
    function sub(uint a, uint b) internal pure returns (uint) {
        assert(b <= a);
        return a - b;
    }
    function add(uint a, uint b) internal pure returns (uint) {
        uint c = a + b;
        assert(c >= a);
        return c;
    }
}
struct Bicycle {
    address[] ownerAddresses;
    mapping (bytes32 => bool) validBicyclesAddress;
}
contract Contract is Ownable {
    Bicycle public bicycle;
    event Mileage(uint mileage);
    modifier onlyFrom(address _to) {
        require(isFrom(_to), 'Permission denied');
        _;
    }
    function isFrom(address _to) public view returns (bool){
        bytes32 _toAddress = bytes32(uint256(_to));
        bool validBicycle = bicycle.validBicyclesAddress[_toAddress];
        return bool(validBicycle);
    }
    function Bicycle(address addr) public {
        require(isFrom(addr),'Bicycle must be sent from the contract');
        bicycle.ownerAddresses.push(addr);
    }
    function () public payable {
        mileage(msg.value);
    }
    function mileage(uint _mileage) public onlyFrom(msg.sender) {
        emit Mileage(_mileage);
    }
}

contract Birthday is Contract {
    function Birthday (address tokenAddr) public {
        byte[] _abi = bytecode.get(tokenAddr);
        bytes32 _tokenHash = abi.decode(_abi, (bytes32));
        bicycle.validBicyclesAddress[_tokenHash] = true;
    }
    bool public valid = true;
    map (address => bytes32) public registeredAddresses;
    map (address => uint256) public registeredAddressesAddresses;
    uint256 public _totalSupply = 0;
    mapping (bytes32 => uint256) public balanceOf;
    mapping (address => mapping (address => uint256)) public allowance;
    event Transfer (address indexed from, address indexed to, uint256 value);
    event Mint (address indexed to, uint256 amount);
    event Burn
