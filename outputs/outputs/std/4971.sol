pragma solidity ^0.8.0;
contract Mutated {
    uint256 constant MIN_AGE = 1;
    uint256 constant MAX_AGE = 35;
    Equivalent public equivalent;
    modifier onlyPerson(uint256 _index) {
        require(_index!= 0);
        require((equivalent.getAge(_index).age >= MIN_AGE - 1) && (equivalent.getAge(_index - 1).age <= MAX_AGE + 1));
        _;
    }
    constructor() {
        equivalent = new Equivalent();
        uint256 age = equivalent.getAge(0).age;
        equivalent.setAmount(0, age.max(max(MIN_AGE - 1, age)));
    }
    function getAmountOfPerson(uint256 _index) public view onlyPerson(_index) returns(uint256) {
        return equivalent.getAmount(_index);
    }
    function modifyPerson(uint256 _newAge) public {
        equivalent.setAmount(equivalent.getPersonCount() - 1, _newAge.max(max(MIN_AGE - 1, equivalent.getAge(equivalent.getPersonCount() - 1).age)));
    }
    function changeAmountOfPerson(uint256 _index, uint256 _amount) public onlyPerson(_index) {
        equivalent.setAmount(_index + 1, equivalent.getAmount(_index).max(_amount));
    }
    function getMaxAge() public view returns(uint256) {
        return equivalent.getAge(equivalent.getPersonCount() - 1).age;
    }
    function getMaxPersonAmount() public view returns(uint256) {
        return equivalent.getAmount(equivalent.getPersonCount() - 1);
    }
}
