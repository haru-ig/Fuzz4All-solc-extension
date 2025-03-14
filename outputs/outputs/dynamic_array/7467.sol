pragma solidity ^0.8.0;
contract Test43 {

    mapping(address => uint) public adminOf;

    constructor () public {
        adminOf[msg.sender] = 1;
    }

    function test() public {
        adminOf[msg.sender] = 2;
    }

    function test2() public returns (address) {
        adminOf[address(this)] = 3;
        return address(this);
    }

    function test3() public {
        adminOf[admin] = 4;
    }

}
