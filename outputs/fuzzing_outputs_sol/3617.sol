pragma solidity ^0.8.0;
contract MutateSemantic6Caller5 {
    uint8[100] a;

    function setUint8WithNoFallback() public returns (uint8) {
        a[0] = 1;
        a[20] = 2;
        a[40] = 99;
        a[60] = 87;
        return a[99];
    }

    function setUint8WithFallback1() public {
        a[0] = 1;
        a[20] = 2;
        a[40] = 99;
        a[60] = 87;
        a[99] = 99;
    }
}



contract Caller {
    address payable c;

    function constructor(address _c) public {
        require(
            address(0)!= _c,

            "Caller: the address of the contract must be null or the zero address"
        );
        c = payable(_c);
    }

    function set() public {
        c.transfer(address(this).balance);
    }

    function get() public {
        c.transfer(address(this).balance);
    }

    receive() external payable {}
}
