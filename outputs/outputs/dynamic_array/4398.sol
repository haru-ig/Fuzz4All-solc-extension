pragma solidity ^0.8.0;
contract Mutant { function test() public payable returns(uint256[][] memory) {
    uint256[][]memory x;
    return x;
    } }

pragma solidity ^0.8.0;
contract Reverted {  function test() public payable returns(uint256 [] memory) {
        uint256 [] memory x;
        revert();
        return x;
        }}
contract Test { function test() public payable returns(uint256[][][],uint16) {
    uint256[][][],uint16[][] memory x;
    return x;
    } }
