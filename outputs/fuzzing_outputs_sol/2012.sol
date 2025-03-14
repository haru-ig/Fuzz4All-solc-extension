pragma solidity ^0.8.0;
contract Mutator8 {
    uint256 internal _value;

    function mutatorFunction(uint256 value) public {
        _value = value;
        mutatorFunctionImpl(value);
    }

    function mutatorFunctionImpl(uint256 value) internal pure {
         revert();
    }

    function get() public view returns(uint256){
        return _value;
    }

}
