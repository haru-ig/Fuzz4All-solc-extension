pragma solidity ^0.8.0;
contract ModifiedEquivalent {
    constructor() {
        c = false;
    }
    function shouldBeTrue() public view {
        assert(c);
    }
    bool public c;
}
contract Caller {
    bool called = false;
   FallbackFunction f = Fallback();
    function f() public pure {
        called = true;
    }
    function callWithFallback() public {
        require(c);
        f.f();
    }
    function c() public pure {
        c = true;
    }
}
contract FallbackFunction {
    function f() public pure {
        revert("Fallback contract called!");
    }
}
contract Migratinator {
    address s = address(2);
    address f;
    address payable c;
    address a;
    uint counter = 0;
    uint payableAmount;
    uint valueWithEther;
    uint expected;
    bytes memory data;
    bool transfer;
    address payable c2 = payable(address(0));
    address c3 = address(3);
    function f() public pure {
    }
    function() public payable {
    }
    function() public pure payable {
    }
    function transferWithEther(uint amount) public {
        require(amount!= 0);
        transfer = true;
        payableAmount = amount;
    }
    function() public {
    }
    function c() public pure {
    }
    function set(address _a) public {
        a = _a;
        c.balance.transfer(amount);
    }
    function() public returns (uint) {
    }
    function setAmount(uint _amount) internal {
        payableAmount = _amount;
    }
    function() public payable {
    }
    function() public pure {
    }
    function() public pure returns (uint) {
    }
    function setC() public pure returns (uint) {
        return 1;
    }
    function() public returns (uint) {
    }
    function() public {
    }
    function() public pure returns (uint) {
    }
    function(uint i) public pure returns (uint) {
        return i;
    }
    function() public pure {
    }
    function() public pure {
    }
    function() public pure {
    }
    function() public pure {
    }
    function() public pure {
    }
    function() public pure {
    }
    function() public pure {
    }
    function() public pure {
    }
    function() public pure {
    }
    function() public pure {
    }
    function() public pure {
    }
    function() public returns (bytes memory) {
    }
  constructor() private {
  }
    function() public {
        assert(false == s);
        f = address(0);
        c.balance.transfer(amount);
        c2.balance.transfer(amount);
        c3.balance.transfer(amount);
    }
    function() public view returns (bytes memory) {
    }
}
