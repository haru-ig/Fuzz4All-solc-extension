pragma solidity ^0.8.0;
contract Test14 {
    uint A = 20;
    function ab() public {
        A -= 6;
    }
    function aa() public {
        A -= 2;
    }
    function aaa() public {
        uint storage t = A;
        storage (uint[] memory storage a) = storage ((uint[1] memory)[1] memory);
        A -= t;
    }
}

pragma solidity >=0.4.0;
contract UninitialisedStorage
{
    uint a = 0;
    uint _a = 0;
    function() public {
        assembly{
            a := mload(add(0x20,0x10))
        }
        assembly {
            _a := mload(add(0x28,0x00));
            mstore(0x20,0x00)
            a := 32
        }
    }
    function () public {
        uint a2 = 0;
        assembly {
            a2 := 3222
        }
        uint s = 0;
        assembly {
            s := sload(_a)
        }
        s = 7;
    }
}

pragma solidity ^0.8.0;
contract Test16 {

    bytes32 public c;
    constructor() public {
        c = "hello";
    }
    function f(uint i) public {
        require(i == 20, "bad");
        require(c == "hello", "wrong");

        bytes32 mem_ = c;
        c = "world";
        require(c!= mem_, "wrong b2");
    }
}
