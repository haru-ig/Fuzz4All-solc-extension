pragma solidity ^0.8.0;
contract SemanticallyEquivApp {
    function s() public view returns (uint32 a) {
        a = i1(uint32(a));
    }
    function i1(uint256 i) public pure returns(uint32 a) {
        return a = 3 + i;
    }
}

contract SemanticallyEquivApp {
    function s() public view returns (uint32)
    {
        (uint32 a) = (3);
    }
}
