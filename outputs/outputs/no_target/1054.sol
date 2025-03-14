pragma solidity ^0.8.0;
contract SemanticMutation21
{
    function call_return_value20() public pure returns (uint256, uint) {
        uint256 a = a();
        uint b = b();
        return (a,b);
    }
    function call_return_value21() public pure returns (uint256, uint) {
        (uint a, uint256 b) = aAndB();
        return (a,b);
    }
    function aAndB() public pure returns(uint a, uint256 b) {
        a = 4;
        b = 400;
    }
}
