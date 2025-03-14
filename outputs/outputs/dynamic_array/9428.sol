pragma solidity ^0.8.0;
contract Arrays9{
    uint256 public a;
    uint256[] public b;
}
contract Arrays10 {
    uint256[] public b;
    uint16 public s;
}
contract Arrays11 {
    uint256[] public b;
    uint16 public s=0;
    function f() public {
        b.push(s);
        s++;
        b.push(3);
        s++;
    }
}
contract Arrays12 {
    uint256[3] [2] public b;
    uint16 public s;
    function f() public {
        b[0][0] = 3;
        b[1][1] = 4;
        b[2][0] = 5;
        b.push(3);
        b.push(4);
        b.push(5);
        s = b[1][0];
        s++;
        b.push(6);
        s++;
    }
}
