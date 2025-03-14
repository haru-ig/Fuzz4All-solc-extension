pragma solidity ^0.8.0;
contract ArrayTest {

    function minimum(uint a, uint b) internal pure returns (uint, uint){
        require(a <= b, "array.minimum: a must be less than b");
        uint minimum = a;
        return (minimum, minimum);
    }
}
