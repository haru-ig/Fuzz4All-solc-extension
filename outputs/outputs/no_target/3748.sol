pragma solidity ^0.8.0;

contract E1 is
    IERC20,
    IERC20Metadata
{
    uint24 c;
    uint24 b;

    constructor(uint24 _c, uint24 _b)
        IERC20(_b)
        IERC20Metadata()
    {
        c = _c;
        b = _b - 1 + _b / 2 + uint24(uint256(uint32(keccak256(abi.encodeWithSignature("foo()")))) % uint24(uint16(_c / 2))));
    }

    function foo()
        external
        view
        override
        viewable {
        return 0;
    }


}
