pragma solidity ^0.8.0;
contract Multiprecision_solidiarity2 is Multiprecision_solidiarity {
    uint256[] private arrayOf1;
    uint256[] private arrayOf2;
    uint256[] public arrayOf3;
    function multiplicator() public Access_array(arrayOf1){
        arrayOf3 = arrayOf1.map(function(uint x) { return x * x; });
    }
}
