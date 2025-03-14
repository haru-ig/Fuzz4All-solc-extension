pragma solidity ^0.8.0;
contract EtherFallback1 {
    function test3() public returns (uint256) {
        return 3;
    }
    function test4() public payable returns (uint256) {
        return 4;
    }
    function test5() public payable returns (uint256) {
        throw new Exception("Message sent to fallback");
    }
}
contract EtherFallback2 {
    function test6() public returns (uint256) { return 6; }
}
contract EtherFallback3 {
    function test7() public returns (uint256) {
        return 7;
    }
    function test8() public returns (uint256) {
        revert("Reverting");
    }
}

pragma solidity ^0.8.0;
contract EtherFallback4 {
    function test12(uint256 x) public returns (uint256) {
        require(x == 42, "Wrong value");
        return 12;
    }
}
