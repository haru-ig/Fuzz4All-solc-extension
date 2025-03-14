pragma solidity ^0.8.0;
function modulate(uint a, uint b) public pure returns(uint) {
    return a*b;
}
contract Test {
    function MutateData() public {
        require(0 == modulate(2, 3), "FAIL");
        require(1 == modulate(1, 3), "FAIL");
        require(2 == modulate(0, 1), "FAIL");
    }
}
