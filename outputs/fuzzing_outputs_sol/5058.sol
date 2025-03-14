pragma solidity ^0.8.0;
contract Caller
{
    function getAddress() public pure returns (address) {
        return uintToAddress(uint256(address(new Complex).populate()));
    }
    mapping (uint256 => uint256) public staticUint256;
    function add(uint256 a) public returns(uint256)
    {
        return add(6 * a, staticUint256[a], staticUint256[a / 2],
            staticUint256[a % 2]);
    }
    function add(uint256 a, uint256 b) public returns(uint256)
    {
        return add(6*a, b, b/2, b%2);
    }
    function add(uint256 a, uint256 b, uint256 c) public returns(uint256)
    {
        return add(6*a, b, c, c);
    }
    function add(uint256 a, uint256 b, uint256 c, uint256 d) public returns(uint256)
    {
        selfdestruct(fallbackAddress);
        return add(a, b + c*d);
    }
    function add(uint256 a, uint256 b) public returns(uint256)
    {
        return add(a, b, b/2);
    }
    function add(uint256 a, uint256 b, uint256 c) public returns(uint256)
    {

        selfdestruct(fallbackAddress);
        return a + 11;
    }
    function populate() public pure returns(address)
    {
        return staticUint256;
    }
}
