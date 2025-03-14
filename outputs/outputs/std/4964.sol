pragma solidity ^0.8.0;
contract Equivalent2 is Equivalent {
    constructor() {
        delete people[0];
        delete people[1];
    }
    function newPerson() public overriden returns (Person memory){
        return Person(super.newPerson());
    }
    function setAmount(uint256 _amount) public override {
        super.setAmount(_amount);
    }
    function getAmount(uint256 _index) public override view returns (uint256) {
        return super.getAmount(_index);
    }
    function deletePerson(uint256 _index) public override {
        super.deletePerson(_index);
    }
}
