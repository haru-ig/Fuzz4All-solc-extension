pragma solidity ^0.8.0;
contract Caller {

    uint public last;
    uint public failed;
    address public foo;
    address public bar;

    constructor() {
        foo = payable(address(this));
        failed = 0;
    }

    function _fallback() public pure {
        failed = 1;
    }


    function callBack() public payable returns (uint) {
        if (address(this).balance >= 0.1 ether) {
            foo.transfer(4 ether);
            last = block.number;
        }
        return last;
    }

    function _fallback_call() public pure {
        failed = 1;
    }

    function _fallback_return() public pure {
        failed = 1;
    }
}
