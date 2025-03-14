pragma solidity ^0.8.0;
contract newX {
    uint internal x = 1;
    function func() public {
        uint256 i = 1;
        uint256 n = 1;
        while (n > i) {
            x += n;
            i++;
            n += 2;
        }
    }
}

pragma solidity ^0.8.0;
contract foo {
    uint internal x = 1;
    function func() public {
        assembly {

            x += mstore(x, sub(x, 1))
        }
    }
}

pragma solidity ^0.8.0;
contract oldY {
    uint256 public i;
    uint256 public j;
    function func(address _addr) public {
        oldX x;
        emit _addr.func();
        x.func();
        emit _addr.func();
        oldX(address(_addr)).func();
    }
}

pragma solidity ^0.8.0;
contract oldY {
    uint public i;
    uint256 public j;
    function func(address _addr) public {
        oldX x;
        emit _addr.func();
        x.func();
        emit _addr.func();
        oldX(address(_addr)).func();
    }
}

pragma solidity ^0.8.0;
contract newY {
    uint internal x;
    function func() public {
        oldX x;
        emit x.func();
        oldX(_addr).func();
    }

    function _addr() public pure virtual returns (address) {
        return x;
    }
}
