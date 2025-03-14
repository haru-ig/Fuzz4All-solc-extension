pragma solidity ^0.8.0;
mapping(uint => uint) public x;
contract Test {
    constructor()
        public
    {
    }
    function get() public returns (uint) {
        return x[80872];
    }
}
contract Test {
    constructor()
        public
    {
        x[10] = 200;
    }
    function get() public view returns (uint) {
        return x[50];
    }
}
