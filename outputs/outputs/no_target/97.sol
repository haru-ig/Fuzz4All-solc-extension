pragma solidity ^0.8.0;
interface IERC223Interface {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
    function approve(address to, uint256 id) external;
    function queryApproval(address owner, uint256 id) external view returns (address operator);
    function approveForAll(address operator, bool _approved) external;
}
contract Koramasay {

    mapping(address => uint) public allowed;
    address public admin;
    address public owner;

    constructor(address _admin) public {
        admin=_admin;
        owner=msg.sender;
        transferOwnership(owner);
    }

    modifier onlyOwnerOrAdmin() {require(msg.sender==admin || msg.sender == owner); _;}

    event OwnershipTransferred(address indexed from, address indexed to);

    function transferOwnership(address newOwner) external onlyOwner {
        if (newOwner!= address(0)) {
            emit OwnershipTransferred(owner, newOwner);
            owner = newOwner;
        }
    }

    function transfer(address _to, uint _value) onlyOwnerOrAdmin public returns (bool success){
        if (_to == address(0)) return false;

        allowed[msg.sender] = allowed[msg.sender].sub(_value);
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function transferFrom(address _from, address _to, uint _value) onlyOwnerOrAdmin public returns (bool success){
        if (_to == address(0)) return false;
        if (_from == address(0)) return false;
        if (allowed[_from] < _value) return false;

        allowed[_from] = allowed[_from].sub(_value);
        allowed[_to] = allowed[_to].add(_value);
        emit Transfer(_from, _to, _value);
        return true;
    }

    function approve(address _spender, uint _value) onlyOwnerOrAdmin public returns (bool success) {
        if (_spender == address(0)) return false;
        allowed[msg.sender] = allowed[msg.sender].add(_value);
        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    function queryApproval(address _owner, uint _id) view public returns (address operator) {
        return allowed[_owner][_id];
    }

    function approveForAll(address _operator, bool _approved) onlyOwnerOrAdmin public returns (bool success) {
        allowed[_operator] = _approved;
        emit ApprovalForAll(_operator, _approved);
        return true;
    }
}
/* Please create a program which demonstrates the use of inherited contracts using inheritance. This should give you the ability to get the owner of any token using the operator function of the inheriting contract
