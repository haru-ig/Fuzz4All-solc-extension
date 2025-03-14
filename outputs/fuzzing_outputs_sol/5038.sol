pragma solidity ^0.8.0;
contract Mutated {
    function mutate() public pure returns(uint256) {
        return type(uint256).mul(uint256(10));
    }
}
contract Test {
    function fallback() public payable {
        require(0,"First: fallback");
        Simple s = new Simple();
        uint256 i = 212;
        require(i == 212,"Second: fallback");
        Mutated m = new Mutated();
        require(m.mutate() == 2120,"Third: fallback");
    }
}
*/
