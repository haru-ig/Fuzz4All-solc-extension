pragma solidity ^0.8.0;
contract MutatedStorage5 {
    uint public num;
    constructor() public {
        num = 1;
    }
    function changeNumber(uint _num) public returns (bool) {
        num = _num + 1;
        return true;
    }
    function addZeroTwo() public {
        num += 2;
    }
}

contract MutatedStorage4 {
    uint public num;
    constructor() public {
        num = 1;
    }
    function changeNumber(uint _num) public returns (bool) {
        num = (_num + 1 + (bytes(_num).length == 2)? 1 : 0);
        return true;
    }
    function addZeroTwo() public {
        num += 2;
    }
}

contract MutatedStorage3 {
    uint public num;
    constructor() public {
        num = 2;
    }
    function changeNumber(uint _num) public returns (bool) {
        num = _num;
        return true;
    }
    function addZeroTwo() public {
        num += 2;
    }
}
