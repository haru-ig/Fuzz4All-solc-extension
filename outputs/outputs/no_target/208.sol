pragma solidity ^0.8.0;
interface ISuperSeller{
    event Filled(string name, string description, address product, address owner);
    mapping(address => string) private _names;
    mapping(address => string) private _description;
    mapping(address => address[]) private _products;
    mapping(address => address) private _to;
    string[] private results;
    mapping(address => string[]) private _order;

    function fill(string memory name, string memory description, uint256 product, address owner) external payable;

    function getResult(uint256 i) public view returns (string memory);

    modifier onlyFillSender(){
        require(msg.sender == _to[msg.sender] && i < _order[msg.sender].length, "Sender do not has the access permission");
        _;
    }

    function getOrder(uint256 index) public view returns (address product, string memory name);
    function fillData() public view returns (address);
    function getFactory() public returns (address);


    mapping(address => string[]) public orders;
    uint256 public totalOrdersPerShop;
    function () external payable;
}
