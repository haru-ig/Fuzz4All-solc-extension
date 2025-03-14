pragma solidity ^0.8.0;
contract Test {
    struct Person {
        string firstname;
        string lastname;
        uint32 age;
        uint16 occupationLevel;
    }
    event ChangedName(address indexed _toAddress, string _newName);
    address payable contractaddress;
    address payable _owner;
    mapping(address => uint32) public _address_age;
    function getAge(address _address) public view returns (uint32) {
        require(_address!= contractaddress);
        return _address_age[_address];
    }
    modifier owner {
        require(msg.sender == _owner, "Permission denied.");
        _;
    }
    function setOwner(address _newOwner) public onlyOwner {
        _owner = _newOwner;
    }
    function setContractAddress(address _newContractAddress) public onlyOwner {
        contractaddress = _newContractAddress;
    }
    function setAddressAge(address _address, uint32 _age) public onlyOwner {
        require(existsAddress(_address));
        _address_age[_address] = _age;
    }
    function addAddressAge(address _address, uint32 _age) public onlyOwner {
        require(existsAddress(_address));
        _address_age[_address] += _age;
    }
    constructor() {
        setContractAddress(address);
        setOwner(msg.sender);
    }
    function existsAddress(address _address) public view returns (bool) {
        return address(this)!= _address;
    }
    function setAddress(address _address, string memory _newName) public onlyOwner {
        if (!existsAddress(_address)) {
            uint32 _age = 0;
            if (_address_age[_address]!= 0) {
                _age = _address_age[_address];
            }
            address payable _parentAddress = _address;
            Person memory account = Person({firstname:"firstname", lastname:"lastname", age:_age, occupationLevel:0});
            setAddressAge(_address, 0);
            emit ChangedName(msg.sender, _newName);
        }
    }
    function getAddress(address _address) view public returns (uint32) {
        return _address_age[_address];
    }
}
