pragma solidity ^0.8.0;
contract B
{
    uint a;
    function fallback() external payable {
        a++;
    }
    function getA() public view returns (uint) {
        return a;
    }
}

pragma solidity ^0.8.0;
contract C
{
    uint a;
    function() external payable {}
    function getA() public view returns (uint) {
        return a;
    }
}
