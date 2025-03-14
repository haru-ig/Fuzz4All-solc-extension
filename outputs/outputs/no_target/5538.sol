pragma solidity ^0.8.0;
contract O {
    uint x = 1;
    mapping(address=>uint) public y;
    function f() public returns (uint) {
        x--;
        return x;
    }
}

pragma solidity file.sol bin/bin.sol;
contract X {



    contract O {
        uint x = 1;
        mapping(address=>uint) public y;
        function f() public returns (uint) {
            uint x = 1;
            return ((x-(x-x)));
        }
    }

    function X() public {
        O a;
    }

    function test_x(uint) public {
        O a;
        X x;
    }
}
