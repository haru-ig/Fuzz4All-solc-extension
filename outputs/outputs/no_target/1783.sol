pragma solidity ^0.8.0;
contract Mutate3 {
    uint public _1;
    constructor() public {
        _1 = 21;
    }


    modifier _Rename1() {
        _1 = 41;
        break;
    }
}
