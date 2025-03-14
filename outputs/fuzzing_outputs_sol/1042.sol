pragma solidity ^0.8.0;
contract SimpleFallback {
    function receive() external pure {}
    function () public payable{}
 }
contract Caller {

    function Caller () payable{}

    function f() public payable {}

    modifier m() { _; }

    function g() public m payable {}
    struct Empty {}

    function callFallback() public payable  {}

    function callReturnData() public payable returns (bool, uint) {}

    modifier _m() {

        m.value;

        address payable self = this.address;
        self._field += 1;
        _;
    }

    modifier _m0() { _; }

    modifier _m1() public pure {
        address payable self = this.address;
        self._field += 1;
        _;
    }
    modifier _m2() public virtual pure {
        address payable self = this.address;
        self._field += 1;
        _;
    }

    modifier _m3() public virtual payable {
        address payable self = this.address;
        self._field += 1;
        _;
    }
}
