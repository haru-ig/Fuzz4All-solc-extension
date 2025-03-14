pragma solidity ^0.8.0;
contract Mutator {
    uint public num;
    constructor() {
        num = 1;
    }
    function increase() public payable {
        num = num + 50;
    }
}
contract TransparentCaller {
    constructor() public {
        num = 555;
    }
    function caller() public pure returns (uint) {
        return num;
    }
}
contract Demonstration {
    uint public num;
    function transfer() public pure returns (uint) {
        return num;
    }
}
