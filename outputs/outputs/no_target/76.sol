pragma solidity ^0.8.0;





interface TokenInterface {


    event Transfer(address indexed from, address indexed to, uint256 value);



    event Approval(address indexed owner, address indexed spender, uint256 value);

    function totalSupply() external view returns (uint256);

    function balanceOf(address owner) external view returns (uint256 balance);

    function allowance(address owner, address spender) external view returns (uint256 remaining);

    function transfer(address to, uint256 tokenAmount) external returns (bool success);

    function approve(address spender, uint256 tokenAmount) external returns (bool success);

    function transferFrom(address from, address to, uint256 tokenAmount) external returns (bool success);
}

contract ERC223 is IERC223Receiver {

    event Approval(address indexed _owner, address indexed _spender, uint256 _value);


    event Transfer(address indexed _from, address indexed _to, uint256 _value);


    modifier dataLengthNotOver43 {
        require(_data.length < 43, "data length is 43 characters or fewer");
        _;
    }


    bytes4 private constant _RECEIVED = 0xddf252ad;

    bytes _data;

    constructor(bytes memory data) {
        assert(data.length >= 43);
        _data = data;
        require(_data.length == 43, "data length is 43 characters or fewer");
    }

    modifier onlyToken() {
        require(msg.sender == _address, "only token transfer");
        _;
    }

    modifier onlyTokenAndDataLengthNotOver43 {
