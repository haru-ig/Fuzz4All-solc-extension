pragma solidity ^0.8.0;
contract Mutator
extends Mutator
{
    function shouldFail(uint counter) public view returns (bool) {
        counter++;
        return true;
    }
}

pragma solidity ^0.8.0;
contract MemoryReader
{
    function shouldBeEqualTo(uint32 _value) external pure returns (uint32) {
        return _value;
    }
}
