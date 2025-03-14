pragma solidity ^0.8.0;


import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract TestBasic {
    uint public x;

    constructor() {
        uint x = 0;
        x = 3;
        test(x);
    }

    modifier only(uint x) {
        test(x, x);
        _;
    }

    function test(uint x, uint y) public {
        x = x + y;
    }
}

contract TestNested {
    using TestBasic for uint;

    constructor(uint x) {
        uint x_ = 4;
        require(x == 4, "!ok");
        uint y = 5;
        y.test(x);
    }
}
"""

# Example 3. Solidity compiler
#pragma solidity >=0.4.21 <0.8.0;
contract Modifiers{
    uint constant x = 1e12;
    function Test(uint x, uint y) public{
        x = 2 * x;
        x += y;

        _;
    }
}

# Example 4. OpenZeppelin contract wrapper
from openzeppelin-solidity.contracts import token.ERC721,Ownable;

contract Wrapper is token.ERC721, Ownable
{
    function add(uint256 a, uint256 b) public pure returns(uint256){
        return a + b;
    }
}
