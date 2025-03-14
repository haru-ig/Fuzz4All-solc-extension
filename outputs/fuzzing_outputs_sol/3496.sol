pragma solidity ^0.8.0;
contract MutatedStorage5 {
    (uint8[] memory numbers) num;
    constructor() public {
    }
    function modify(uint _number) public {
        num.push(_number);
    }
    function getNumber() public view returns (uint) {
        return numbers[0];
    }
}
