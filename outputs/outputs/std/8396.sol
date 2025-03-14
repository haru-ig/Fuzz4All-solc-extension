pragma solidity ^0.8.0;
contract ArrayMutationsBis6Is6 is ArrayMutationsBis6Is6{
    uint[] private integers;
    function setIntegers(uint[] memory _integers){
        integers = _integers;
    }
    function getIntegers() public view returns (uint [] memory) {return integers;}
    function getSum() public view returns (uint) {return getSum(integers);}

    function setIntegerAtIndex(uint _index, uint _value) public {
        assert(_index >= 0 && _index < integers.length);
        integers[_index] = _value;
    }
    function addIntegers(uint[] memory _integers) public {
        for (uint i = 0; i < _integers.length; ++i){
            remove(this.getSum() + _integers[i]);
        }
    }
    function remove(uint _value) public {
        for (uint i = 0; i < integers.length; ++i){
            if (integers[i] == _value) {
                delete integers[i];
                break;
            }
        }
    }
}
