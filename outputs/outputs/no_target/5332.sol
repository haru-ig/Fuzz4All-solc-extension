pragma solidity ^0.8.0;
contract MutatedExamples13 {
    bytes32 internal constant _uint160Max = type(uint160).max;
    function mutated(uint160 x) public returns(uint80 z) {

        unchecked {return value(uint160(0)).add(x);}
    }
    function value(uint160 y) internal pure returns(uint80) {
        if(y > _uint160Max) revert();
        return uint80(y);
    }
}
