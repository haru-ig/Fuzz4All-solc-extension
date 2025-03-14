pragma solidity ^0.8.0;
contract Contract {
    uint constant public A = 10;
    uint constant public B = 2;
    uint public Avar;
    uint public Bvar;
    constructor() {
    }


    function setA() public returns (uint) {
        return 1000;
    }
    function getA() public view returns (uint){
        Avar = A < 1? 1 :  A;
        return Avar;
    }
    function setB() public returns (uint) {
        return 20;
    }
    function getB() public view returns (uint){
        return B;
    }
}
contract Modifiers {
    modifier onlyOwner() {
        require(tx.origin == msg.sender);
        _;
    }

    modifier guarded(uint amount) {
        requiremsg(amount >= 100, "cannot be purchased at less than 100 Ether");
        emit Purchase(amount);
        _;
    }
}
#pragma solidity ^0.6.0;

contract BurnableToken {
    function burn(address from, uint vestedTokens) public;
}
contract Minter {
    modifier onlyMinter() {
        require(msg.sender == _contractOwner);
        _;
    }
    address public _contractOwner;
    uint public totalSupply;
    string public symbol;
    uint public baseSupply;
    uint _minterBalance;
    constructor(uint supply_) {
        totalSupply = supply_;
        _contractOwner = msg.sender;
    }
    function setContractOwner(address _newOwner) public onlyMinter {
        require(_newOwner!= address(0));
        _contractOwner = _newOwner;
    }
    function increaseSupply(uint _value) public onlyMinter {
        baseSupply = _minterBalance + _value;
        totalSupply += _value;
    }
    function mint(uint _value) onlyMinter public {
        _mint(_value, msg.sender);
    }
    function _mint(uint _value, address _to) internal {
        _mintAmount(_to, _value);
        _addM
