pragma solidity ^0.8.0;
contract Mutate {
    uint256 public num;
    constructor(uint256 _num) {
        num = _num;
        num++;
        num--;
        num++;
        num--;
    }
    function get_num() public view returns (uint256) {
        return num;
    }
    function test_modify_num() public view returns (uint256) {
        return num;
    }
    function test_increase_num(uint256 _amount) public {
        num += _amount;
    }
    function test_decrease_num(uint256 _amount) public {
        num -= _amount;
    }
    event NewNum();
}

pragma solidity ^0.8.0;
contract Fallback is Mutate {
    uint256 public num;
    address public owner;
    constructor(address _owner) {
        owner = _owner;
        num = 0;
        emit NewNum();
    }
    modifier only_owner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }
    function increase_num() public only_owner {
        num += 1;
        num++;
        num++;
        num++;
    }
    function decrease_num() public only_owner {
        num -= 1;
        num--;
        num--;
        num--;
    }
    function get_num() override public view returns (uint256) {
        return num;
    }
}

pragma solidity ^0.8.0;
contract Caller is Mutate {
    uint256 public num;
    address public callerAddress;
    Address[] public addresses;
    constructor(uint256 _num) {
        num = _num;
    }
    function get_num() override public view returns (uint256) {
        return num;
    }
    modifier only_caller() {
        callerAddress = msg.sender;
        uint256 index = uint256(callerAddress) % addresses.length;
        require(
            addresses[index] == msg.sender,
            "Caller is not part of the addresses array"
        );
        _;
    }
    function init_addresses(bytes32[] memory _data) public {
        for (uint i = 0; i < _data.length; i++) {
            add_address(_data[i]);
        }
    }
    function add_address(bytes32 _data) public only_caller {
        uint256 index = uint256(keccak256(abi.encodePacked(_data))) % addresses.length;
        addresses[index] = Address(uint256(_data));
    }
}
/* The documentation describes how all Ether are sent to a contract
