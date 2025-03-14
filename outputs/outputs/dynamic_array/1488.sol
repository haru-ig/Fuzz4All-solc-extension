pragma solidity ^0.8.0;
contract Test2 {
    function check() public {

    }
    mapping(uint => uint256) public mapForEntry;
    bytes32 constant MYBYTEKEY = keccak256('mykey');
    uint256 constant MYBYTEVAL = 1;
    uint256 test() public {
        uint256 tmp = uint256(MYBYTEKEY);
        bool a1 = mapForEntry[tmp] == 0;
        mapForEntry[tmp] = MAPFORENTRYVAL;
    }
}
