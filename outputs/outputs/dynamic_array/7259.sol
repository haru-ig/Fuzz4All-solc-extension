pragma solidity ^0.8.0;
contract Cong { address[] a = new address[](0); bool b = true; }

pragma solidity ^0.8.0;
contract Mut2 is Cong { address[] x = new address[](2); bytes[] xx = nethash2(new address[](2), "asdf"); bytes32 xxhash; }
