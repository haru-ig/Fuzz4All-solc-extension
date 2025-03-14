pragma solidity ^0.8.0;
contract Fallback {
    mapping(uint256 => bool) bools;
    function () external {
        require(false, 'Something is wrong with the contract');
    }
    function test(uint4 i) public pure {
        if(bools[i]) {
            fallback(1);
        }
    }
}
