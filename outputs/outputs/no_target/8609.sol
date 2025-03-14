pragma solidity ^0.8.0;
contract Mutated {
    function get(uint a_, uint b_, uint c_) public view returns (uint) {
        return (a_ ^ (b_ & 10) << 8) / 10;
    }
}


interface New {
    function get(uint _a, uint _b) view external returns (uint256);
}

pragma solidity ^0.8.0;
contract Overflow {
    uint256 constant A_MAX = uint256(-1);

    struct A {
        uint a;
    }

    function checkOverflow(A storage self) public pure returns (uint) {

        var r = A_MAX - self.a;

        return r;
    }

    function mutate(A storage self) public pure returns (uint) {

        A memory s;
        s.a = self.a + A_MAX;
        return s.a;
    }
}

pragma solidity ^0.8.0;
contract Compatibility {
    uint internal value;

    function checkOverflow(A storage self) public pure returns (uint) {

        uint r = a_max(a_20(self) + A_MAX);

        return r;
    }

    function do_overflow(A storage self) public pure returns (uint) {



        uint r = a_max(a_20(self) + 12);

        return r;
    }

    function mutate(A storage self) public pure returns (uint) {


        A memory s;
        s.a = a_max(a_20(self) + A_MAX);
        return s.a;
    }
}
mapping (uint16 => uint256) public f;
contract New {
    function get(uint i_) public view returns (uint) { return f[16]; }
}
function a_max(uint a_) public pure returns (uint) {


    f
