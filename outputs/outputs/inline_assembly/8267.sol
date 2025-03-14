pragma solidity ^0.8.0;
contract InlineAssembly5{
    inline assembly {
        mstore (addr, 0)
    }
    using SafeMath for uint256;
    function test() public view returns(bool) {
        bool a;
        uint256 x = 1;
        assembly {
            mstore(x, 0)
            mload(x)
        }
        return a;
    }
}
