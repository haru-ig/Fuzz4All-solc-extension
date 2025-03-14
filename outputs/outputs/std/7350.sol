pragma solidity ^0.8.0;
import  "Library.sol";
contract Mutated {

    function getSumAndMax(uint256[] memory args) public pure returns(uint256, uint256) {
        uint256 mySum = 0;
        uint256 myMax = 0;
        for(uint i=0; i<args.length; i++) {
            mySum = add(mySum, args[i]);
            if(mySum > myMax) {
                myMax = mySum;
            }
            else {
                mySum = 0;
            }
        }
        return (mySum, myMax);
    }
}
