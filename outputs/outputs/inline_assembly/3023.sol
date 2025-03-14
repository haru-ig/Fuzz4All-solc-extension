pragma solidity ^0.8.0;
contract C {
    bytes4 public constant m = 0xF2c1d2D6F675B874D703FD84104EA36A4414D8EF;
    bytes32 public constant X = 1;
    function setX(uint _x) public returns (uint) {
        bytes4 a = m;
        bytes32 b = X;
        assembly {
            a(add(a, 0x0), X)
            b(add(b, 0x0), 0x0)
            setX(_x);
        }
        return getX();
    }
    function getX() public view returns (uint) {
        bytes4 a = m;
        bytes32 b = X;
        assembly {
            a(add(a, 0x0), X)
            b(add(b, 0x0), 0x0)
            m()
            m()
            m()
        }
    }
}
