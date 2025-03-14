pragma solidity ^0.8.0;
contract M is B {
    constructor() public {

        require(msg.sender == admin, "Only admin can call");

        this.setAdmin(msg.sender);
    }
}

pragma solidity ^0.8.0;
contract C {
    constructor() public {
        require(block.timestamp > block.number, "Time not too far in the future");
    }
    mapping (bytes => bool) public allowedAddresses;
    constructor() public {
        allowedAddresses[msg.sender] = true;
    }
    function allowAddress(address _addr, bool _status) public {
        allowedAddresses[_addr] = _status;
    }
    function allowSender() public payable {
        allowedAddresses[msg.sender] = true;
    }
    function noAllowedSender() public {
        allowedAddresses[msg.sender] = false;
    }
    function getAllowedAddr() public view returns (bool) {
        return allowedAddresses[msg.sender];
    }
    function payAllowedAddr(address _addr) public payable {
        allowedAddresses[_addr] = true;
    }
    function noAllowedAddr() public {
        allowedAddresses[msg.sender] = false;
    }
    function getNotAllowedAddr() public view returns (bool) {
        return!allowedAddresses[msg.sender];
    }
}

pragma solidity ^0.8.0;
contract D is C {
    constructor() public {
        require(block.timestamp > block.number, "Time not too far in the future");
    }
    function notAllowedSender() external isCallerNotPayable {
        address[] memory allowed = new address[](1);
        allowed[0] = msg.sender;
        allowedAddresses[msg.sender] = false;
        if (allowedAddresses[msg.sender]) {

            require(allowedAddresses[allowed[0]] || allowed[0] == admin, "Sender is not allowed");
            payable(address(0)).transfer(msg.value);
        }
    }
}

pragma solidity ^0.8.0;
contract E {
    mapping (uint => uint) public map;
    constructor() public {
        this.map[1] = 20;
    }
    function change(uint _id) public {
        map[_id]
