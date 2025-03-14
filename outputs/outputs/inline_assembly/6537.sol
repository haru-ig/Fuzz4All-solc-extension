pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract SimpleBlockExample15 {
    uint a;
    constructor() public {
        uint b = 8;
        assembly {
          b := 16
        }
        a = b;
    }
    function func(uint _a) {

    }
}
