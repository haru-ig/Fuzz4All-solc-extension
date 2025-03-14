pragma solidity ^0.8.0;
contract MutatedMath is Math {


    modifier onlyAfterDividedBy(uint a, uint b) {
        if (a / b!= a){
            revert("divided by zero");
        }
        _;
    }



    function div(uint a, uint b) external onlyAfterDividedBy(a,b) returns (uint){
        return a / b;
    }
}
