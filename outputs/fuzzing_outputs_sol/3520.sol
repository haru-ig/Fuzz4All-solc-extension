pragma solidity ^0.8.0;
contract MutatedStorage7 {
    uint public num = 0;
    constructor() public {
    }
    function multiplyByThree(uint _number) public returns (bool) {
        num = _number * 3;
        return true;
    }
}

pragma solidity ^0.8.0;


contract Caller {
    function fallbackFunction() public {
        contract MutatedStorage6 storage2 = MutatedStorage6.storage;
        storage2.changeNumber(2);
    }
}
