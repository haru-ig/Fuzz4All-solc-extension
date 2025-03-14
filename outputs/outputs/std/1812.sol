pragma solidity ^0.8.0;
contract SolidityExample2 {uint public x = 5;}
contract Migrations {
    address private _from;
    address private _to;
    uint private _value;


    constructor(address contractOwner) {
        _to = contractOwner;
        _from = msg.sender;
    }

    modifier safe() { require(msg.sender == _to, "Can only be called by the contract's owner."); _; }

    function safeCall(address _target, bytes memory data) public virtual safe {
        (bool success, ) = _target.call{value: _value}(data);
        require(success, "Failed call");
    }


    function safeTransferFrom(address _source, address _to, uint256 _value) public virtual safe {
        (bool success, ) = _source.call{value: _value}("");
        require(success, "Failed transferFrom");
    }


    function triggerMigration(address _to, uint _value) public virtual safe {
        safeCall(_to, abi.encodeWithSignature("init()", address(this), _value));
        _from = msg.sender;
    }


    function init(address _to, uint _value) public virtual {
        safeCall(_to, abi.encodeWithSignature("init()", address(this), _value));
        _from = msg.sender;
    }


    function call(address target, bytes memory data) public virtual {
        safeCall(target, data);
    }


    function transfer(address to, uint value) public virtual safe {
        safeTransferFrom(_from, to, value);
    }


    function () external payable {

        require(msg.value >= 500 ether, "Balance below 500 Ether");
        require(_to!= address(0), "Invalid address");

        uint x = 5;
        m[_to] = true;
        safeTransfer(_to, value);
    }
}
contract SolidityExample2 {
        mapping(address => bool) private toBeAdded;
}
contract SolidityExample2 {
    struct Person {
        string name;
        uint age;
    }

    enum ERole{
        User,
        Admin
    }

    Person private person;
    mapping(address => ERole) private roles;
    bool private isAdministrator;

  ...
}
