pragma solidity ^0.8.0;
contract ConstantAccessBlock6Mutator {
    bool public _var = true;
    uint public _value;
    constructor(){
        _var = true;
        _value = 1;
    }
    function test() public returns (bool) {
        uint[] memory array = new uint[](10);
        array[0] = 1;
        uint x = 1;
        assembly {
            {

            }
            for (i := 0; i < mload(array); i:= add(i, 1)){
                x := mul(x,2)
            }
        }

        return _var;
    }
    function getValue() public view returns (uint) {
        return _value;
    }
}
