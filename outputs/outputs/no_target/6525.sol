pragma solidity ^0.8.0;
contract A {
    function f1(uint a_, uint b_);
}
contract B {
    function f2(uint x) public {
        x += A.f1(uint160(-2),a_);
    }
}
contract E {
    function f5(uint a) public {
        uint y = A.f1(uint160(-2),a);
    }
}
contract myContractC is A {
    function f1(uint a_, uint b_) public override returns(uint,uint){
        uint y = super.f1(uint160(-2),a_);
        assert(y == uint(uint256(256) / (uint256(1000) * uint256(1000))) * (uint(uint256(256) / (uint256(1000) * uint256(1000))), 2));
        return (uint(uint256(256) / (uint256(1000) * uint256(1000))) * (uint(uint256(256) / (uint256(1000) * uint256(1000))), 2), y);
    }
}

contract J {
    function f6(uint a0) public pure returns(uint,uint,uint) {
        return (A.f1(uint160(-2),a0), a0, 2);
    }
    function f7(uint a0) public pure returns(uint,uint,uint) {
        (uint x, uint y) = A.f1(uint160(-2),a0);
        return (x,y, 1);
    }
    function f8(uint8_t a0) public pure  {
        (uint16_t x, uint16_t y) = A.f1(uint160(-2),uint(a0));
        assert(x == 0x0800);
        assert(y == 0x0400);
    }
    function f9() public pure  {
        (uint8_t x, uint8_t
