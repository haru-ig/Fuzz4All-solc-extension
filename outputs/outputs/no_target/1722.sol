pragma solidity ^0.8.0;
contract Mutate0014b {
    uint256 input = 2;
    modifier m(uint i) {
        input = input + i;
        _;
    }
    function callMe() m(2) public {
        assert(true);
    }
}
pragma solidity ^0.8.0;
contract Mutate0014c {
    modifier m() {
        bool a = true;
        uint i = 0;
        while (m(i) || a) {
            i++;
        }
        _;
    }
    function callMe() m() public {
        uint a = 1;
        while (m2() > 0 || a >= 2) {
            a--;
        }
        assert(true);
    }
    function m2() public pure {
        return 0;
    }
}
