pragma solidity ^0.8.0;
contract C {
    function c() public {
        uint256[] memory x = new uint256[](3);
        x[0] = 42;
        uint256[] memory y;
        assembly {
            x := add(x, mload(y))
        }
    }
}

pragma solidity ^0.8.0;
contract C {
    struct X {
        uint256 v;
        bytes data;
    }
    struct Y {
        uint256[][3] array;
    }
    function c() public {
        X[] memory x = new X[](3);
        uint256[] memory y = new uint256[](3);
        y = new uint256[](3);
        assembly {
            x := add(x, mload(y))
        }
        x[0].data = 0xcccccccc;
        x[1].data = 0xffffffe5;
        x[2] = X(8, '0x5a79894d7522fb059a6fe940f01945ea2f400e8419e0a7f1406f5433c104b47e5');
    }
}
