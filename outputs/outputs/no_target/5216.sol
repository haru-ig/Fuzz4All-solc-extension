pragma solidity ^0.8.0;
contract SimpleExample17 {
    uint num = uint(uint256(uint160(0x266d)));
    function doSomething(bytes memory _data) public {
        num = num >> 1;
        assert(num == uint(uint256(uint160(0x266d))));
    }
}

pragma solidity ^0.8.0;
contract RevertExample1 {
    uint num;
    function doSomething(bytes memory _data) public {
        num = 5 - num;
        assert(num == 0);
    }
}

pragma solidity ^0.7.0;
contract RevertExample2 {
    uint num;
    function doSomething(bytes memory _data) public {
        try {
            num = 40 / 0;
            assert(0);
        } catch Error(string memory reason) {
            assert(reason == "DIV_ZERO");
        }
    }
}

pragma solidity ^0.7.0;
contract RevertExample3 {
    uint num;
    function doSomething(bytes memory _data) public {
        int x = 0;
        bytes memory memory;
        assert(num == int(128)-1);
    }
}

contract RevertExample4 {
    uint num;
    function doSomething(bytes memory _data) public {
        uint x = 0;
        bytes memory memory;
        uint160 a = x >> (_x - bitlength(x + 1)) + 1);
        assert(num == uint(128) - 1);
    }
}

contract RevertExample5 {
    uint num;
    function doSomething(bytes memory _data) public {
        int x = 0;
        uint160 a = x >> (_x - x);
        assert(num == uint(128) - 1);
    }
}

contract RevertExample6 {
    function doSomething(bytes memory _data) public {
        uint a = 40 / uint64(0);
        assert(uint(a / 0 + uint(uint256(a))) == 0);
    }
}

contract RevertExample7 {

    function doSomething(bytes memory _data) public returns (uint x) {
        x = x >> (_x - _x);
        return x;
    }
}

contract RevertExample8 {

    function doSomething(bytes
