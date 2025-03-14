pragma solidity ^0.8.0;
contract B { function f(bool) public pure { unchecked { if (true) unchecked { if (true) unchecked { } else { } } else { } } } }
