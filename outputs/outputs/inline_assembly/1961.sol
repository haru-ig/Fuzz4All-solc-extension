pragma solidity ^0.8.0;
contract NewZ {
    struct Y {
        uint256 a;
        uint256 b;
    }
    uint256 a;
    uint256 b;
    function z() public returns(Y memory tmp) {
        uint256 c = a+1;
        a = a+1;
        b = a+1;
        a = a*a+a+1;
        Y memory my = Y({a:a, b:b});
        return my;
    }
}
