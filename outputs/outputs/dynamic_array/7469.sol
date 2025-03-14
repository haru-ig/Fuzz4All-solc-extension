pragma solidity ^0.8.0;
contract Test44 {
    address public admin;
    mapping (address => uint) public adminOf;
    constructor () public {
        admin = msg.sender;
    }
    function test() public {
        adminOf[] = [address(this), 2];
    }
    function test2() public returns (address) {
        adminOf[address(this)] = 2;
        return address(this);
    }
    function test3() public {
        adminOf[address(this)] = 0;
    }
}


pragma solidity ^0.8.0;
contract Test45 {
    address public admin;
    mapping (address => uint) public adminOf;
    constructor () public {
        admin = msg.sender;
    }
    function test() public {
        address[2] memory a = [address(this)];
    }
    function test2() public returns (address) {
        address[2] memory a = [address(this), 2];
        return address(a);
    }
    function test3() public {
        address[2] memory a = [address(this)];
    }
}
