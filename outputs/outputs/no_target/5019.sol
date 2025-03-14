pragma solidity ^0.8.0;
contract A1 { function A(uint256 a) public pure {a += 1;} }
contract B2 { function B(uint256 a) public pure {b += 1;} }
contract C2 { function C(uint256 a) public pure {c += 1;} }
contract D2 { function D(uint256 a) public pure {d += 1;} }

pragma solidity ^0.8.0;
contract C1 { function C(uint256 a) public pure {a += 1;} }
contract D1 { function D(uint256 a) public pure {a -= 1;} }
contract G3 { function G(uint256 a) public pure {a -= 1;} }

pragma solidity ^0.8.0;
contract ADC { function A(uint256 a) public pure {a += 1;} }
contract BDC { function D(uint256 a) public pure {a -= 1;} }
contract ACD { function C(uint256 a) public pure {a -= 1;} }
contract ADG4 { function D(uint256 a) public pure {a = 1000000; } }
contract DCL { function C(uint256 a) public pure {a = 1000000; } }
contract ACDG5 {
   function D(uint256 a) public pure {a = 1000000; }
}
contract CCG6 {
   function G(uint256 a) public pure {a = 1000000; }
}
