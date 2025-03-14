pragma solidity ^0.8.0;
contract MyContract {
    address public addr;
    function getAddress(uint) public view returns (address) {
        return addr;
    }
}

pragma solidity ^0.8.0;
contract MyContract {
    struct State {
        address addr;
        uint _balance;
    }
    mapping(address => State) public storages;
    function set(address, uint) public {
        storages[msg.sender].addr = msg.sender;
        storages[msg.sender]._balance = msg.value;
    }
    function get(address) public view returns (uint) {
        return storages[msg.sender]._balance;
    }
    function fail() public {
        require(get(msg.sender) + get(storages[msg.sender].addr));
    }
}
