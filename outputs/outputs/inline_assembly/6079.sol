pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample10 is Immutable {
    function main() public pure {
        setX(5);
        setX(2);
    }
    function setX(uint256 v) public {
        x.x = v;
    }
}



pragma solidity >=0.8.0 <0.9.0;

contract Immutable {
    uint256 public x;
}
