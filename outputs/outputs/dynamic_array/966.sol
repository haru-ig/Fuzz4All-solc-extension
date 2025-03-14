pragma solidity ^0.8.0;
contract LotteryWithEquivalence {
    address[] immutable testArrayEquivalence;
    address[] immutable testArrayChange;
    address[] immutable testArrayNew;
    constructor() public {
        testArrayEquivalence = [address(this) ];
        testArrayChange = [address(this) ];
        testArrayNew = [address(this) ];
    }
    function swapElements() public{
        (testArrayEquivalence, testArrayChange, testArrayNew)  = (testArrayChange, testArrayEquivalence, testArrayNew);
    }
    function getEquivalence() public view returns(address[] memory){
        return (testArrayEquivalence);
    }
}
