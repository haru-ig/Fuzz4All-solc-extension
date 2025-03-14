pragma solidity ^0.8.0;
import "./IERC712.sol";

contract MyLibrary {
    IERC712[] public tokens;
    IERC712 tokenByIndex(uint256 index) public pure {
        require(index < tokens.length, "Token index out of bounds");
        IERC712(_tokens[index]).transferFrom("0x1111111111111111111111111111111111111111", "0x1111111111111111111111111111111111111111", 0);
    }

    function add(uint256 a, uint256 b) public pure returns (uint256){
        return a + b;
    }

    function tokenCount() public pure returns (uint256 count) {
        count = tokens.length;
    }

    function initialize() onlyOwner {
        IERC712 _token1 = new IERC712();
        tokens.push(_token1);
    }

    fallback() external {
        tokens[0] = msg.sender;
    }

    receive() external payable { }
}
