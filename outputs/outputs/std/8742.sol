pragma solidity ^0.8.0;
contract Increasing {
    struct Point {uint x; uint y; }
    function area(Point storage p) internal pure returns (uint) {return p.x*p.y;}
    mapping (address => Point) storage _map;
}


pragma solidity ^0.8.0;
contract Fibonacci {
    function getFib() public pure returns (uint64) {
        return 190;
    }
}

pragma solidity ^0.8.0;
contract StorageInContract {
    mapping(address => uint256) public data;
    function get_data() public pure returns (uint256) {
        return data[msg.sender];
    }
}
