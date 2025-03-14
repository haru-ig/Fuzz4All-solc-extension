pragma solidity ^0.8.0;
contract Mutate73 {
    uint[] internal x;
    function getX() public view returns ( uint[] memory x) {
        return x;
    }
}
function getX(uint[] memory self) internal view returns (uint[] memory x) {
    return x;
}
function setX(uint[] memory self,uint[] memory x0) internal {
    x = x0;
}
function sum(uint[] memory self) internal view returns (uint256 x) {
    return self.length;
}
function sum2(uint[] memory self) internal view returns (uint x) {
    x = 0;
    for (uint i = 0; i < self.length; i++) {
        x += self[i];
    }
    return x;
}
contract Mutate73 {
    uint[] internal x;
    function getX() public view returns ( uint[] memory x) {
        return x;
    }
    function sum(uint[] memory self) public pure returns (uint) {
        return sum2(self);
    }
    function sum2(uint[] memory self) public pure returns (uint256) {
        uint x;
        for (uint i = 0; i < self.length; i++) {
            x += self[i];
        }
        return x;
    }
}
