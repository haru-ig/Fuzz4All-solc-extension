pragma solidity ^0.8.0;
contract S {
    {
        assembly {
            address(0).transfer(sender, 1 ether)
        }
    }
}

pragma solidity ^0.8.0;
contract S {
    uint256 public x;
    uint8 public z;

    fallback() external {
        x = 1337;
        z = 16;
    }

    receive() external payable {
        if (address(0)!= payable(msg.sender)) revert();
    }

    function f() public {
        x += z + 1;
    }

    function test() public {
        f();
    }
}

pragma solidity ^0.8.0;
contract S {
    address payable _to;
    constructor() {
        address payable tmp = payable(msg.sender);
        _to = tmp;
    }

    fallback() external receive {
        if (address(_to)!= address(msg.sender)) revert();
    }

    receive() external {
        revert("test");
    }

    function f() public returns (uint) {
        uint x = 0;
        while (x < 1000) {
            x += 10;
        }
        return x;
    }

    function callF() public returns (uint, uint) {
        uint x = f();
        return x, x+1;
    }
}
