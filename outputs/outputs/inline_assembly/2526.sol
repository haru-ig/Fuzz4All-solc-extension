pragma solidity ^0.8.0;
contract Comp32 {
    constructor () {
        a = 5;
    }
    func2() public {
        a *= 1;
    }
    function divideByTwo(uint32 _a) public {
        _a / a;
    }
}
