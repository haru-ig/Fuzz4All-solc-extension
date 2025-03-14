pragma solidity ^0.8.0;
contract Mutation3 {
    uint x=1;
    mapping (uint => uint256) public map1;

    uint val;
    function initWithOne() public {
        val = 1;
    }

    function add() public {
        if(x == 1) x = 2;
    }

    function set() public view {
        map1[x] = x+1;
     }
}
contract WorseCase5 {
    uint x;
    mapping (uint => uint256) public map;
    function worseCase(uint x) public pure returns (uint256) {
     return map[x]+1;
     }

   function add(uint y) public view returns (uint256) {
        return map[x]+y+1;
    }
}
