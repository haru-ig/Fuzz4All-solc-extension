pragma solidity ^0.8.0;
contract Test29999Mutated2 {
    bytes4 constant public f = 0xf44e8f0a;
    bytes4 constant internal nonRelevant = 0x02;
    function (uint, uint, uint) internal nonRelevant {
    }
    function () internal returns (uint, uint, uint) {
        return (0, 0, 0);
    }
    fallback () external contract {
        if (f.equals(nonRelevant)) {
            return (2, 3, 4);
        } else {
            return (0, 0, 0);
        }
    }
}


contract Test29999Mutated3 {
    struct MyStruct {
        function create2(address payable account, uint256 amount) public returns (uint256 tokenId);
    }
