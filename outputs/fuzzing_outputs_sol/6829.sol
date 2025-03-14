pragma solidity ^0.8.0;
contract Solitaire {
    function test(uint256 i) public {
        i >= 4? (revert("Wrong input"), i = 3) : i;
    }
}

pragma solidity ^0.8.0;
contract Solitaire {
    function test() public pure {
        revert("Wrong input");
    }
}
