pragma solidity ^0.8.0;
contract M12{
    address private owner;
    modifier only_owner{ owner = msg.sender; _; owner = 0; }
    uint256 private number;
    uint256 private random;
    uint16 private s;
    constructor () public { owner = msg.sender;number = uint256(block.difficulty);}
    function set_random() public only_owner { random = uint256(keccak256(abi.encodePacked(blockhash(uint160(-9976001925))),block.blockhash(uint160(0)),blockhash(uint160(block.number)),block.timestamp), number ); }
    function set_number(uint256 _number) public only_owner { number = _number;}
    function set_s(uint16 _s) public only_owner { s = _s;}
}
