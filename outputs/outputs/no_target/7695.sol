pragma solidity ^0.8.0;
contract Bar {
    function quux() public pure returns (uint, uint) {
        uint v = 0x1111111111111111111111111111111111111111111111111111111111111;
        return (v.add(0xffffffffffffffffffffffffffffffffffffffffffffffff), v >> 256);
    }
}
contract Biz {
    function x() public pure returns (address) {
        return address(new Foo());
    }
}
contract Mixin {
    function bar() public pure returns (uint) {
        return 0;
    }
}
contract Founder is Foo, Bar, Biz, Mixin {}
address payable minter = payable(0x00000000000000000000000000000000000000);
contract Minting is Foo, Bar, Biz, Mixin {
    uint start;
    uint end;
    constructor () public {start = now;end = now + 2 ether;}
    function mint() public payable {
        minter.transfer(this.balance);
        uint x = barmut(end);
        assert(x);
        end += 1800000 seconds;
    }
}








contract Test {
    Founder contractFounder_;
    Minting contractMinting_;
    constructor () public {
        contractFounder_ = new Founder();
        contractMinting_ = new Minting();
    }
    function setUp() public {
        contractMinting_.mint();
        assert(contractMinting_.bar() > 118);
        assert(contractMinting_.quux().f < 2);

        assert(contractFounder_.baz(1) == 2);
