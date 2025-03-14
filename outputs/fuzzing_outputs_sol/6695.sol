pragma solidity ^0.8.0;
contract Test1 {
    address private owner;

    constructor() {
        owner = msg.sender;
    }

    function changeOwner (address newOwner) public {
        address oldOwner = owner;
        owner = newOwner;
        emit OwnershipChanged(oldOwner, newOwner);
    }

    event OwnershipChanged(address oldOwner, address newOwner);

    modifier onlyOwner () {
        require(msg.sender == owner, "Only owner can call");
        _;
    }

}



pragma solidity ^0.8.0;
contract Owned {
    address private owner;
    string private name;

    constructor() {
        owner = msg.sender;
    }

    function getOwner () public view returns (address) {
        return owner;
    }

    function setName(string memory _name) public onlyOwner {
        name = _name;
    }
    function getName() public view returns (string memory) {
        return name;
    }

    function setOwner (address _owner) public onlyOwner {
        owner = _owner;
    }
}

contract MaliciousFunction {
    function (uint amount) public payable {
        uint x = amount;
    }

    function (uint amount) public returns (uint z) {
        uint x = amount;
        uint y = 1+x;
    }

    function (address) public throws (uint) {
    }

    function withCall () public payable {
        callWithEther("");
    }

    function callWithEther (string memory z) public payable {
        (, uint r) = address.call.value(msg.value)("");
        delete r;
    }

    function (bool) public returns (uint) {
        uint x = 1;
        uint y = 2;
        uint z = 3;
        (uint w_0, uint w_1) = address.call(uint160(x), uint160(y), uint160(z));
        return x^y^z^w_0^w_1;
    }

    function (address) public payable {
    }

    function callWithAddress (address a, bytes x) public payable {
        a.call.value(msg.value)("");
    }

    function (int8) public returns (uint) {
        int a = 1;
        uint b = 2;
        (int8 c_0, int8 c_1) = address.call(uint160(a), uint16
