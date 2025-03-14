pragma solidity ^0.8.0;


contract TestContract {
    uint public a;

    function TestContract() public {
        a = 555;
    }

    function test() public {
        assembly {
            mstore(0xb0, a)
        }
    }

}
