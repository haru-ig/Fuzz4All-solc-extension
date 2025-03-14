pragma solidity ^0.8.0;
interface IERC20 {
    function name() external view returns(string memory);
    function symbol() external view returns(string memory);
    struct TransferEvent {
        address indexed _from;
        address indexed _to;
        uint256 _value;
    }
    function transfer(address _to, uint256 _value) external returns(bool);
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
}
