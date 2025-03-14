pragma solidity ^0.8.0;
contract Test73 {
    uint[1][5] arr;
    uint[2] public num;

    function add(uint _x) public {
        arr[0][num] = _x;
    }
    function func() public {
        add(1);
        num++;
        arr[0][num] = num;
    }
}
