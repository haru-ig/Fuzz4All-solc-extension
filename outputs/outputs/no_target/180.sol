pragma solidity ^0.8.0;
contract Test {
    uint public k;
    constructor() public {
        k = 3;
    }
    function set() public { k = 5; }
    function mod() public pure returns (uint){ return 17%k; }
    function div() public pure returns (uint){ return 2%k; }
    function mul() public pure returns (uint){ return 5%k; }
    function add() public pure returns (uint){ return 10%k; }
    function shiftleft() public pure returns (uint){ return k<<3%k; }
    function shiftright() public pure returns (uint){ return k>>3%k; }
}<commit_msg>Update test contract<commit_after> pragma solidity >=0.7.0;


/* Please create a simple program that simply
