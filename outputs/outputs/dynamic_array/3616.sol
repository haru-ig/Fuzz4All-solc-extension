pragma solidity ^0.8.0;
contract C {
    uint256 a;
    mapping(uint256 => uint256) b;
    function c() public {
        b[a] = 1;
        a++;
        b[a] = 2;
    }
}

pragma solidity ^0.8.0;
contract C {
    uint8[1][9] myarray;
    function f() public {
        myarray[0][8] = 777;
    }
}
