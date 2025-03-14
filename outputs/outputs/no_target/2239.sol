pragma solidity ^0.8.0;
contract Mutation2_SEM3 {
    function f(uint8[4] memory a, uint8 b) public pure {
       a[b] = 0;
    }
}

pragma solidity ^0.8.0;
contract Mutation2_SEM6 {
    function f() public pure {
        require(true);
    }
}
contract Mutation2_SEM7 {
    function f(uint8[2,3] memory b, uint b) public pure {
       if (b == 2) {
            require(false);
        }
    }
}
contract Mutation2_SEM8 {
    mapping(uint256 => uint256) public x;
    function f(uint256 x) public pure {
        x = 43;
        x += 842;
    }
}
contract Mutation2_SEM9 {
    function f(uint256 x) public pure {
        x = require(x < 25);
    }
}
contract Mutation2_SEM11 {
    function f(uint256 x) public pure {
        require(x > 25);
    }
}
contract Mutation2_SEM12 {
    uint256 public x;
    function f(uint256 x) public view returns(uint256) {
        return block.number;
    }
}
contract Mutation2_SEM13 {
    uint256 public x;
    constructor(uint256 x) public {
        x = x + 21;
    }
    function f(uint256 x) public returns(uint256 y) {
        x = block.number - x;
    }
}
contract Mutation2_SEM14 {
    function test() public pure {
        uint238 _tmp_int;
        assembly {
            _tmp_int := mload(add(mload(0xfff4), 0x12))
        }
        require(_tmp_int == 45) ;
    }
}
contract Mutation2_SEM15 {
    function f() public pure {
    }
}
contract Mutation2_SEM16 {
    mapping(uint256 => uint256) public x;
    function test(uint256 x) public { }
}
contract Mutation2_SEM17 {
    uint256 public x;
    constructor(uint256 _x) public {
        x = _x + 21;
    }
    function f(uint256 x) public {
        require(block.number > x);
    }
}
