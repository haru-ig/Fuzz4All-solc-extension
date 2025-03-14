pragma solidity ^0.8.0;
contract EquivalentSolidity6
{
    struct X
    {
        uint public y;
    }
    bytes private _e;
    uint256 private _a;
    uint256 private _b;
    function get() public view returns(bytes memory)
    {
        return _e;
    }
    function add(uint index, uint val) public pure returns(uint) {
      return _e.length + index + val;
    }
    function mul(uint val) public pure returns(uint) {
      return val * 2;
    }

}
