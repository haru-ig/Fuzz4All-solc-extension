pragma solidity ^0.8.0;
contract Mutator {
    function set_and_get_uint(uint256 a_, uint256 b_) public {
        a_ = a_;
        b_ = b_;
        get_uint(a_, b_);
    }
    function get_uint(uint256 a_, uint256 b_) public view returns (uint256) {
        return a_ ^ (b_ & 10) << 8;
    }
    uint256 a_ = 0;

    uint256 b_ = 0;
}
function modifiedmutator(Mutator storage m) {
    m.set_and_get_uint(42, 324);
    uint256 a = m.get_uint(42, 324);
}
contract Simple is New, Mutator {
    function x() public pure returns (uint) {
        return get(a_ + 1, 13);
    }
}

contract Modifiers {
    function runModifier(Mutator storage m_, bytes memory _signature) private view {
        require(
            abi.decode(_signature, (bool, uint256, uint256)),
            "test: sig is invalid"
        );
        m_.set_and_get_uint(42, 324);
        uint256 a = m_.get_uint(42, 324);
    }
}
contract Main {
    function test() public {
        Mutator storage m = new Mutator();
        m.set_and_get_uint(42, 324);

        Simple storage s = new Simple();




        uint x;
        (x, a_, b_) = s.x();
        uint y = s.get(a_ + 13, b_);

        s.set_and_get_uint(42, 324);

    }
}
