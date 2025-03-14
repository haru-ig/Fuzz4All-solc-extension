pragma solidity ^0.8.0;
contract LotteryWithEquivalence {
    address[] internal testArray;
    address[] internal nonEqualArray;
    constructor() public {
        testArray.push(address(this));
        testArray.push(address(this));
        nonEqualArray.push(address(this));
        nonEqualArray.push(address(this));
    }
    function getEquivalence() public view returns(address[] memory){
        return nonEqualArray;
    }
}
