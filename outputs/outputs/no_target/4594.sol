pragma solidity ^0.8.0;
module M {
    contract C is A {
        function f() public{
            if (x!= 0){throw "bad";}
        }
        address[10] memory foo = [address(this)];
        mapping (address => uint256) private mappingX;
        uint256 private x;
    }
}
