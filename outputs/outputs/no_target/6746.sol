pragma solidity ^0.8.0;
contract TestMutated {
    struct Mapped {
        uint x;
    }

    function add(uint x, uint y) public pure returns (uint) {
        return Mapped({x: x})
          .x
          .add(Mapped({x: y}).x);
    }
}

pragma solidity ^0.8.0;
contract TestMutated {
    address a = msg.sender;
    uint x;

    function test() public returns (uint) {
        x = a.add(x);
        x = a + x;
        return x;
    }
}
contract Mutated {
    uint x;

    function () public {
        x = 0;
        x = x + 1;
    }
}
contract Mutated2 {
    uint x;

    function () public payable {
        x = 0;
        x = x + 1;
    }
}
contract Mutated3 {
    uint x;

    function () public returns (uint) {
        x = 0;
        x = x + 1;
        return x + 1;
    }
}
contract Mutated4 {
    uint x;

    function () public returns (uint) {
        x = 0;
        x = x + 1;

        uint _x = 0;
        if(_x > 999999 * _x) {
            return 0;
        } else {
            x += 1;
        }

        return x + 1;
    }
}
contract Mutated5 {
    uint x;

    function () public returns (uint) {
        x = 0;
        x = x + 1;

        uint _x = 0;
        if(_x > 100* _x) {
            return 0;
        } else {
            x = x + 1;
        }

        uint _x = 0;
        if(_x == 0) {
            return 0;
        } else {
            x += 1;
        }

        return x + 1;
    }
}
contract Mutated6 {
    uint x;

    function function1() public returns (uint) {
        x = 0;
        uint _x = 0;

        if(_x == 0) {
            return 0;
        } else {
            x = x + 1;
        }

        uint _x = 0;
        if(_x == 0) {
            return 0;
        } else {
            x += 1;
        }
    }
}
contract Mutated7 {
    uint x;

    function function0() public returns (uint) {
        uint a = 0;

        uint _x = 0;
        if(_x == 0) {
