pragma solidity ^0.8.0;
contract A {
    function a() public view returns (uint256) {
        uint256 x = 3;
        x+= 3;
    }
}
contract B {
    function b() public pure returns (uint256) {
        uint256 x = -5;
        x-=2;
    }
}

pragma solidity ^0.8.0;
contract A {
    function a() public view returns (uint256) {
        uint256 x = 3;
        x+= 1;
    }
}
contract B {
    function b() public pure returns (uint256) {
        uint256 x = 1;
        x--;
    }
}

pragma solidity ^0.8.0;
contract A {
    uint256 public y;
    modifier updateOnlyIfXGreaterThanY(uint256 x, uint256 y) {
        if (x > y) {
            _;
        }
    }
}
contract B {
    function b() public pure returns (uint256) {
        uint256 x = 5;
        x *= 2;
    }
}
contract TestContractA is A {
    function a() public returns (uint256) {
        uint256 x = y;
        x *= 2;
    }
}
