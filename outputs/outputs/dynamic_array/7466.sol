pragma solidity ^0.8.0;
contract test43sol {
    address public admin;
    mapping (address => uint) public adminOf;
    constructor () public {
        admin = msg.sender;
    }
    function test() public {
        adminOf[msg.sender] = 1;
    }
    function test2() public returns (address) {
        adminOf[address(this)] = 2;
        return address(this);
    }
    function test3() public {
        adminOf[admin] = 3;
    }
}

pragma solidity ^0.8.0;
contract test43semantic {
    address public admin;
    mapping (address => uint) public adminOf;
    constructor () public {
      admin = msg.sender;
    }
    function test() public {
        adminOf[msg.sender] = 1;
    }

    function test2() public returns (address) {
      adminOf[address(this)] = 2;
        return address(this);
    }
    function test3() public {
      adminOf[admin] = 3;
    }
}
