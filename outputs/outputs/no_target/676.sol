pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutator {
    address payable public owner;
    address payable public[] public holders;

    mapping(address => uint) private balance;
    mapping(address => mapping(uint => uint)) private userToBalance;
    mapping(address => uint) private ownerToBalance;

    address public feeAddress;

    address payable public constant newOwner = address(0xdeadbeef);

    modifier onlyOwner(){
        require(owner == msg.sender, "Caller is not contract's owner");
        _;
    }

    modifier onlyFee(){
        require(msg.value >= address(this).balance, "Only fees are accepted");
        _;
    }

    modifier fee(){
        require(msg.value >= feeAddress.balance, "Insufficient fees received");
        _;
    }


    modifier ttl(uint ttl) {
        require(msg.value == (ttl * 1 ether), "Time to live expired");
        _;
    }

    function Mutator(uint initialBalance, address newOwner_) public {
        feeAddress = address(0x0);
        ownerr(newOwner_);
        owner = newOwner_;
        balance[msg.sender] = initialBalance;
        userToBalance[msg.sender] = initialBalance;
        ownerToBalance[msg.sender] = initialBalance;
    }

    function ownerr(address _newOwner_) internal onlyOwner {
        require(_newOwner_!= address(0), "newOwner_ cannot be the zero address");
        owner = _newOwner_;
    }

    function owneserr(address _newOwner) internal onlyOwner {
        require(_newOwner == msg.sender, "Caller is not contract's owner");
    }

    function ownerrb(uint _value) internal onlyFee {
        uint ownerr = msg
