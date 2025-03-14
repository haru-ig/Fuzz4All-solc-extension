pragma solidity ^0.8.0;
contract MyContract {
    function addNumbers(uint a, uint b) public pure returns (uint256) {
        return a + b;
    }
}
contract SolidityCheck  {

    function addStrings(string memory a, string memory b) public pure returns (string memory) {
        return  a + b;
    }


    function main() public {
        uint256 constant x = 1;
        uint256 constant y = 2;
        uint256 result = YulContract.addValues(x, y);
        uint256 result2 = MyContract.addNumbers(x, y);
        string memory s1 = addStrings("hello", "world");
        string memory s1r = "0x" + s1 + "";
        string memory s2 = addStrings("", "");
        string storage s3 = addStrings();

        bytes32 r = keccak256(abi.encodePacked(s1r));
        string memory xo = addStrings("");
    }
}
