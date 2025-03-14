pragma solidity ^0.8.0;

contract oldY {
    struct XReturn { uint x; }
    uint internal x = 1;
    function func(uint256 n)
        public
        payable
        returns (XReturn memory)
    {
        uint256 i = 1;
        while (i > n) {
            x = x + i;
            i++;
        }
        XReturn memory _xReturn = XReturn(x);
        return _xReturn;
    }
}

pragma solidity ^0.8.0;

contract oldZ {
    struct XReturn { uint x; }
    uint internal x = 1;
    function func(uint256 n)
        public
        payable
    {
        uint256 i = 1;
        while (i > n) {
            uint256 newX = _add1(x);
            x = _sub2(newX);
            i++;
        }
        uint256 newX2 = _add1(x);
        x = _sub2(newX2);
    }

    function _add1(uint256 a) private pure returns (uint256) {
        return a + 1;
    }

    function _sub2(uint256 a) private pure returns (uint256) {
        return a - 1;
    }
}
