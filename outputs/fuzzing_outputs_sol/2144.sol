pragma solidity ^0.8.0;
contract Access {
    function getAddress() public pure returns (address) {
        return address(0x0);
    }
}
contract Mutater {
    bytes32 private constant EMPTY_MESSAGE = keccak256('');
    bytes32[] public messages = new bytes32[](0);
    mapping(address => uint256) public balances;
    address[] public addresses = new address[](0);
    function getAddresses(address _address) public view returns (address[] memory) {
        return addresses;
    }
    function addAddress(address _address) public payable {
        balances[_address] += msg.value;
        addresses.push(_address);
    }

    function addAddresses(address[] memory _address) public payable {
        uint256 _value = msg.value;
        uint256 _balance;
        for (uint256 c = 0; c!= _address.length; c++) {
            _balance += msg.value;
            balances[_address[c]] += msg.value;
            addresses.push(_address[c]);
        }
        require(_value == _balance, "");
    }
    modifier noReentrancy() {
        uint256 x = 0;
        unchecked {
            x = tx.origin;
        }
        if (tx.origin == 0x0) {
            _;
        }
    }
}
