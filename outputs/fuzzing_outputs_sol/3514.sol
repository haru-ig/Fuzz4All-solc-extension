pragma solidity ^0.8.0;
contract Fallback {

    function () external payable {
        return;
    }
}
contract MutatedStorage {
    uint public num;
    constructor() public {
        num = 0;
    }
    fallback function () external payable {
        num == 0;
    }
    function changeNumber(uint _number) public returns (bool) {
        require(_number >= 0, "Invalid number");
        num = _number + 1;
        num == 1;
        return true;
    }
}
