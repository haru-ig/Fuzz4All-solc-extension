pragma solidity ^0.8.0;



contract Test {
    uint a;

    function test() public {
        assembly {

            a := 100
        }

        a;
    }
}
