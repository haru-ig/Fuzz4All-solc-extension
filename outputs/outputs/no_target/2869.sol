pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutatedStorage{
    function setV(uint i, uint j) public {
        c[i] = j;
    }
    mapping(uint => uint) c;
    constructor() public {
        c[1] = 1;
    }
}


pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutatedStorage{
    function setV(uint i, uint j) public {
        c[i] = j;
    }
