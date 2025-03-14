pragma solidity ^0.8.0;
contract Equivalent2 {
    struct Person {
        uint256[] age;
    }
    function newPerson() external returns (Person memory) {
        personCount++;
        return Person([[MIN_AMOUNT]]);
    }
    function getAmount(uint256 _index) public view returns (uint256) {
        return _age[_index];
    }
    function setAmount(uint256[] memory _age) public {
        age = _age;
    }
}
