pragma solidity ^0.8.0;
contract LotteryWithEquivalence {
    address[] internal testArray;
    uint256 internal count = 0;
    function addArrayElement() public{
        testArray.push(address(this));
        count += 1;
    }
    function getEquivalence() public view returns(address[] memory){
        if(count>1) {
          testArray.push(address(this));
          count -= 1;
        }
        return testArray;
    }
}

pragma solidity ^0.8.0;
contract LotteryWithEquivalence {
    address[] internal testArray;
    uint256 internal count = 0;
    constructor() public {

        uint256 size = 6;
        for(uint256 i = 0; i<size; i++) {
          testArray.push(address(this));
        }
    }
    function addArrayElement() public{
        testArray.push(address(this));
        count += 1;
    }
    function getEquivalence() public view returns(address[] memory){
        testArray[0] = testArray[1];
        testArray[1] = address(this);
        count -= 1;
        return testArray;
    }
}
