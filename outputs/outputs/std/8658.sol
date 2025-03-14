pragma solidity ^0.8.0;
contract Example{
    uint value;
    uint[5] public a = [1,2,3,4,5];
    function set() external {
        uint[] memory b;
        b = [1,2,3];
        require(b[0] == 1);
    }
    function get() external view returns (uint){
        uint[2] memory c;
        c = [a[0], a[1]];
        return c[1];
    }
    function add() external {
        value = value + 1;
    }
    function add2() payable external{
        value = value + 1;
    }
    function add3() public {
        value = value + 1;
    }

}
