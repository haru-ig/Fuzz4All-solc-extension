pragma solidity ^0.8.0;
contract ConvertingString {
    uint internal constant _1 = Math._1;
    uint internal constant _10 = Math._10;
    uint internal constant _1024 = uint(1024) * uint(_1);
    uint internal constant _100000000000000000000000 = uint(0) * uint(10);
    function convertUint() returns (uint) {
        return _1000000000000000000000000;
    }
    function convertString()
        public
        pure
        returns (string memory)
    {
        return "10";
    }
}


pragma solidity ^0.8.0;
interface ERC20BasicInterface {
    function totalSupply() external view returns (uint256);
    function balanceOf(address who) external view returns (uint256);
    function transfer(address to, uint256 value) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 value) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint25
