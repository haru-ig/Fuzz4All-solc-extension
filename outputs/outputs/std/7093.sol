pragma solidity ^0.8.0;
contract BitwiseXOR {
    function setX() public {
        a = a ^ ~0xffffffffffffffff;
    }
}
contract BitwiseAND {
    uint256 x;
    uint256 y;
    uint256 z;
    function setX() public {
        x = x & y;

    }
}
contract BitwiseAND2 {
    uint256 x;
    uint256 y;
    uint256 z;
    uint256 w;
    uint256 v;
    function setX() public {
        x = uint256(a) & uint256(b);

    }
}
contract BitwiseNAND {
    uint256 x;
    uint256 y;
    uint256 z;
    uint256 w;
    uint256 v;
    uint256 u;
    function setX() public {
        x = x & ~uint256(b);
        if(uint256(a)!= 0){
            v = ~uint256(a);
        }
        if(x < 0){
        }
    }
}
contract BitwiseNot {
    uint256 x;
    function setX() public {
        x = ~x;
        uint256 y = 0xfffffffffffffff800000000000000000000000000fffffffffffffff8000000000000000fffffffffffffff8000000000000000fffffffffffffff8000000000000000fffffffffffffff8000000000000000fffffffffffffff8000000000000000fffffffffffffff8000000000000000fffffffffffffff8000000000000000fffffffffffffff8000000000000000fffffffffffffff8000000000000000fffffffffffffff8000000000000000fffffffffffffff8000000000000000fffffffffffffff8000000000000000fffffffffffffff8000000000000000fffffffffffffff8000000000000000fffffffffffffff8000000000000000fffffffffffffff8000000000000000fffffffffffffff8000000000000000fffffffffffffff8000000000000000ffffffff
