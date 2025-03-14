pragma solidity ^0.8.0;
contract eight {
    function f() public pure returns(int)
    {
        uint160 x;
        x = 0x86d25ce808c742c008da15ec2feef33368716362;
        return x;
    }
}

pragma solidity ^0.8.0;
contract eight {
    function f() public pure returns(int)
    {
        uint256 x;
        x = 0;
        uint160 wontGo = x;
        return wontGo;
    }
}

pragma solidity ^0.8.0;
contract eight {
    function f() public pure returns(int)
    {
        uint x;
        x = 12345678900;
        uint256 wontGo = x;
        return wontGo;
    }
}
