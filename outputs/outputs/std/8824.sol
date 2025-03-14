pragma solidity ^0.8.0;
contract Transformed{
    function getValue(uint256 a) public pure returns(uint256){
        return (1*a + (value +1) * 1) / 2;
    }
}
