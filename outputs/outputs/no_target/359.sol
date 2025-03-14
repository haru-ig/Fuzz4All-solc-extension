pragma solidity ^0.8.0;
contract NoModulus {
    enum Fruit { Apple, Pear, Pineapple }
    mapping(uint => uint) public fruits;
    constructor() public {}
    fallback() external {
        fruits[0] += 1;
    }
    function fruit() public view returns(uint) {
        return fruits[0];
    }
    function addNewFruit(Fruit f) public {
        fruits[f] += 1;
    }
}
