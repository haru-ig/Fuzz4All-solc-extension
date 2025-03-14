pragma solidity ^0.8.0;
contract SemanticsEquivalence
{
    function setY(uint y) public {
        assembly {
            mstore(x, mload(x) + y)
        }
    }
    function getY() public view returns(uint y){
        assembly y := mload(x)
    }
}
