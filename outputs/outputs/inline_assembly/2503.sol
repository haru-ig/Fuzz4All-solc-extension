pragma solidity ^0.8.0;
contract Comp2 {
    uint _a;
    function increase() public {
        _a += 1;
    }
}
pragma solidity ^0.8.0;
contract Comp2 {
    uint _a;
    constructor(uint _b) {
        _a=_b+2;
    }
    function increase() public payable {
        _a+= 1;
    }
}
