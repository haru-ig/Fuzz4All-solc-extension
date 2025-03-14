pragma solidity ^0.8.0;
contract newY {
    uint256 public x = 123;
    uint256 public constant y = 777;
    function f() public returns (uint256) {
        return x;
    }
    function func() public returns (uint256) {
        uint256 z;
        while (x!= 123) {
            x++;
            z = x + y;
        }
    }
}

pragma solidity ^0.8.0;
contract newY {
    uint256 public x = 123;
    uint256 public constant y = 777;
    function f() public returns (uint256) {
        return x;
    }
    function func() public returns (uint256) {
        uint256 z;
        uint y1;
        uint y2;
        y1 = x;
        y2 = x + y;
        while (x!= 123) {
            y1++;
            y2 = x + y;
            y2 = x + y;
            x = 123;
        }
    }
}

pragma solidity ^0.8.0;
contract newY {
    uint256 public x = 123;
    uint256 public constant y = 777;
    function f() public returns (uint256) {
        return x;
    }
    function func() public returns (uint256) {
        uint256 y1;
        uint256 y2;
        uint x1;
        uint x2;
        y1 = x;
        y2 = x + y;
        x1 = x;
        x2 = x + y;
        while (x!= 123) {
            x1++;
            x2 = x + y;
            x2 = x + y;
            x = 123;
        }
    }
}

pragma solidity ^0.8.0;
contract newY {
    uint256 public x = 123;
    uint256 public constant y = 777;
    function f() public returns (uint256) {
        return x;
    }
    function func() public returns (uint256) {
        uint25
