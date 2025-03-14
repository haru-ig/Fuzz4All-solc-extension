pragma solidity ^0.8.0;
contract Test {
    uint public k;
    constructor() public {
        k = 5;
    }
    function get() public view returns (uint, uint){
        return (k + 10, -1);
    }
    function set(uint _x, uint _y) public returns (uint, uint) {
        k = 2 * _x + _y;
    }
}

contract Main {
    function main() public {
        Test x;
        (uint, uint) tmp = x.set(10, 50);
        assert(tmp[0] == 20, tmp[0] - 10, tmp[1] + 50);
    }
}
