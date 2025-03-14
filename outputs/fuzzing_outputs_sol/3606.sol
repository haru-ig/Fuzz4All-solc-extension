pragma solidity ^0.8.0;
contract MutateSemantic6 {
    uint a;
    uint result = 6;
    function function5() public pure {
        modify(233);
        return result;
    }
    function updateA(uint _b) public {
        a = _b;
    }
    function modify(uint256 a) public {
        result = a + a;
    }
}
