pragma solidity ^0.8.0;
contract modifierB2{
    function f() public view returns (uint256){
        return uint256(0);
    }
}

contract Test{
    bool test = true;
    function test() public returns (bool boolVal, uint256 num){
        require(test, "");
        uint256 _ = 0;
        return (test, _);
    }
    function test2() private returns (bool boolVal, uint256 num){
        require(test);
        uint256 _ = 0;
        return (test, _);
    }
}
code generation contract does not have access to all of the data types.
*/
