pragma solidity ^0.8.0;
contract Arrays7 {
    uint256[] public b2;
    uint16 public s;
}

pragma solidity ^0.8.0;
contract Arrays8{
    uint256[] public b2;
    uint16 public s;
    function f() public {
        b2.push(3);
        b2[1] = 5;
        b2[3] = b2[2];
        b2[0] = 3;
    }
}
