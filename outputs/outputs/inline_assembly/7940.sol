pragma solidity ^0.8.0;
contract Greeter {
    address owner;
    uint[] public numbers;
    constructor() {
        owner = msg.sender;
    }
    function add(uint _num) public {
        require(msg.sender == owner);
        numbers.push(_num);
    }
    function fetch(uint _index) public view returns (uint) {
        return numbers[_index];
    }


}
