pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutatedStorage
{
    mapping(uint => uint) d;
    constructor() public {
        d[1] = 1;
    }
    function() virtual external {

    }
}
