pragma solidity ^0.8.0;
contract Test43{
    address public admin;
    constructor (address _admin) public{
        admin = _admin;
    }
    function test(address _to) public payable {
        require(_to!= address(0),"test");
    }
}
