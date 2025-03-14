pragma solidity ^0.8.0;
contract B {

    address payable pay;
    constructor(address payable _pay) payable public {
        pay = _pay;
    }
}
contract B {
    uint public x;
    address payable pay;

    constructor(uint _x) public {
        x = _x;
        emit ValueSet(x);
    }

    event ValueSet(uint x);

    modifier valueSet(uint _x) {
        x = _x;
        emit ValueSet(x);
        _;
    }

    function pay() public view valueSet(x++) returns(uint, uint) {
        require(x + x == 0);
    }
}
