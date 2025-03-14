pragma solidity ^0.8.0;
contract B {
    address public admin;
    modifier onlyAdmin {
        require(msg.sender == admin, "Not admin");
        _;
    }
    function setAdmin(address _addr) public onlyAdmin {
        admin = _addr;
    }
    function adminAddress() external view returns (address) {
        return admin;
    }
}
contract Test is B {
    function checkAdmin(address _addr) public view {
        require(msg.sender == admin, "Not admin");
    }
}

pragma solidity ^0.8.0;
contract Test is B {
    function adminAddress() public view returns (address) {
        return admin.call{value: msg.value}("");
    }
}

pragma solidity ^0.8.0;
contract B {
    address public admin;
    function setAdmin(address _addr) public {
        admin = _addr;
    }
    function adminAddress() public view returns (address) {
        return admin;
    }
    function fallback() public payable {
        emit Caller(uint256(address(this)));
        (bool success, ) = payable(admin).call{value: msg.value}("");
        require(success, "Fallback function failed");
    }
}
contract Caller is B {
    constructor(uint _val) public { admin = msg.sender; value = _val; }
    uint public value;
    event Caller(uint val);
}
