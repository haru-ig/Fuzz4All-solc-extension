pragma solidity ^0.8.0;
contract ChangedFunction
{
    uint256 public addedTo;
    function update() internal pure returns(uint256) {
addedTo = (uint256(keccak256("Updated")) - int256(uint256(keccak256("The Original"))));
return addedTo;
}
function getX() public pure returns(uint256) {
return addedTo;
}
}
