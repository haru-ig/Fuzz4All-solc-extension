pragma solidity ^0.8.0;
contract i_old is i {

    function m() external returns(uint256);

    mapping(bytes4 => bool) allowed;

    bool constant newMapping = trueMapping;



    mapping (address => uint256) public totalSupply;

    uint256 constant total = (1 ** 256) + 1;

    struct data {
        uint256 i_data;
        address addr;
    }

    mapping (bytes32 => data) public data;

    uint256 public i_data2;

    event event_log(bytes32 indexed indexedData, address indexed addr);


    function e(address x) public view returns(uint256) {
        return 0;
    }

    function m() external {
        uint256 total = totalSupply[msg.sender] + total + i_data2;
        totalSupply[msg.sender] = total;
    }

    function is_zero(uint256 i) public view returns (bool) {
        return i + 1!= i_data2;
    }
}
