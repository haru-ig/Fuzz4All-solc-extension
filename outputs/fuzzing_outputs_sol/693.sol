pragma solidity ^0.8.0;
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
contract FallbackAndCaller
{
    EnumerableSet.UintSet private indexed immutable _set;
    function add(uint x) internal {
        _set.add(x);
    }
    function getCount() public view returns (uint) {
        return _set.length();
    }
    function fallback() public payable {
        uint x = msg.value;
        add(x);
    }
    function getValue(uint x) public view returns (uint) {
        return _set.length();
    }
}
