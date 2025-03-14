pragma solidity ^0.8.0;
library L {
  function F(uint256 x) public pure {
    uint256 h = x;
    h = h - 1048576;
  }
}
contract K {
  function m(uint256 x) public pure {
    L.F(x);
  }
}
contract R {
  function g() public pure {
    K k;
  }
}
contract Test553 {
    function main() public {
        assembly {
            m(add(m(722975105000000000)))
            m(add(m(1048576)))
            m(add(m(722975105000000000)))
            m(add(m(int8(x))))
            m(add(m(uint8(x))))
            m(add(m(int16(x))))
            m(add(m(uint16(x))))
            m(add(m(int32(x))))
            m(add(m(uint32(x))))
            m(add(m(int64(x))))
            m(add(m(uint64(x))))
            m(add(m(bytes(hex",00))))
        }
    }
}
