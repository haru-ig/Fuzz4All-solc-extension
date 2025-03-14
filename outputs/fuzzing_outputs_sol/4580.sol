pragma solidity ^0.8.0;
contract ContractWithoutFallback {
    function f0(uint) external {
    }
}
contract ContractWithFallback5 {
    function f1(uint) public view {
    }
    function f2(uint) public view onlyIfCallReturns0 {
    }
    function f3(uint) public view onlyIfCallReturns1 {
        call();
    }
    function f4(uint) public view onlyIfCallReturns2 {
        address addr = address(addr);
        call(this);
        addr.transfer(10000);
    }
    function f5(bytes) public view {
        return (address(0), 0, 0);
    }
    function f6(bytes memory) public view {
        return (address(0), 0, 0);
    }
    function f7(bytes memory) public view {
        fallback();
        return (address(0), 0, 0);
    }
    function f8(int) external {
        f1.fallback(0);
    }
    function f9(int) public {
        f2.fallback(0);
    }
    function f10(bytes) public onlyIfCallReturns0 {
        f3.fallback();
    }
    function f11(bytes) public onlyIfCallReturns1 {
        f4.fallback();
    }
    function f12(int) public returns (int) {
        return f5;
    }
    function f13(int) public returns (int) {
        bytes memory b = hex"0123";
        assert(b.length % 2 == 0)
        if (b.length % 2!= 0) {
            throw AddressZero(0);
        }
        return b.length%2? bytesToString.fallback(hex"0") : bytesToString.fallback(b);
    }
    function f14(string memory) public returns (string memory) {
        return bytesToString.fallback("");
    }
    function f15(bytes32) public view {
        bytes memory b = hex"0123";
        b[(b.length / 2) - 1] = 0;
        revert("bytes memory length doesn't fit with integer: " + bytes32ToString.fallback(b), -1);
    }
    function f16(bytes memory) public {
        bytes memory b = hex"0123";
        assert(b.length % 2 == 0)
        if (b.length % 2!= 0) {
            Assert.fail("bytes memory length doesn't fit with integer: " + bytes32ToString.fallback(b));
        }
        bytesToString.fallback.call.value(1 ether) (b);
    }
    function f17(bytes
