pragma solidity ^0.8.0;
contract L18 {
    struct Store { uint x; }
    uint x = 0;
    function storeAdd(Store memory s) public {
        assembly {
            s.x += x
            s.x *= s.x
            s.x += s
        }
    }
}
contract C {
    emit SetX(uint256);
    address payable addr;
    function setX(uint x) public {
        addr.transfer(x);
        emit SetX(x);
    }
    function() external { revert(); }
}
