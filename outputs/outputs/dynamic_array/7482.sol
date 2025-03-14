pragma solidity ^0.8.0;
contract Test42Old {
    address public admin;
    uint _numberOfAccounts = 0;
    mapping (address => uint) public adminOf;
    address public a;
    address public b;
    address public c;
    mapping (address => address[] memory) balances;
    constructor (address public _admin) public {
        admin = _admin;
    }
    function test() public {
        adminOf[msg.sender] -= 1;
        uint adminCount = adminOf[admin]+1;
        delete adminOf[admin];
        a = 0x00;
    }
    function a() public view returns (address) {
        return a;
    }
    function b() public view returns (address) {
        return b;
    }
    function c() public view returns (address) {
        return c;
    }
    function addAdmin(address _admin) public {
        adminOf[_admin] -= 1;
        uint adminCount = adminOf[_admin]+1;
        delete adminOf[_admin];
    }
    function removeAdmin(address _admin) public {
        adminOf[_admin] -= 1;
        uint adminCount = adminOf[_admin]+1;
        delete adminOf[_admin];
    }
}
