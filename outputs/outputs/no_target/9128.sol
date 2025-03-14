pragma solidity ^0.8.0;
contract mutators_v1
{
    using mutators_v2 for mutators_v2.array_v2;
    uint[8] private array_v1;
    function emitsEvent() public pure virtual {
    }
    function return_v_v1e() public pure virtual returns(uint256) {
        return array_v1.length;
    }
    function return_v_v1e1() public pure virtual returns(uint256) {
        return array_v1[array_v1.length];
    }
    function return_v_v1e2() public pure virtual returns(int128) {
        return uint256(-1) ^ cast(uint256(1), 8)?? -int256(1);
    }
}
contract mutators
{
    function returns_v_v1e() public returns(uint256) {
        return array.length();
    }
    function returns_v_v1e1() public returns(uint256) {
        return array[array.length];
    }
    function returns_v_v1e2() public returns(int128) {
        return uint256(-1) ^ cast(uint256(1), 8)?? -int256(1);
    }
}
