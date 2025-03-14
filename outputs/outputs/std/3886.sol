pragma solidity ^0.8.0;
interface ITokenInterface{

    function symbol() view returns (string memory);


    function name() view returns (string memory);


    function totalSupply() view returns (uint256);

    event Transfer(
        address indexed from,
        address indexed to,
        uint256 indexed _tokenId,
        uint256 value
    );

    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 indexed _tokenId,
        uint256 value
    );


    function setTo(address _to) external;


    function getToken() pure external returns (address);
}
pragma solidity ^0.8.0;
import "./ITokenAddress.sol";

pragma solidity ^0.8.0;

address owner = address(0x343B53AFFF64185200050d3908127BD0C72476D7);
contract TokenAddress is ITokenAddress{
    bytes32 public salt = keccak256("Squid");
    mapping(address => uint256) public balances;
    mapping(address => mapping(address => uint256)) public allowed;

    event Transfer(address indexed from, address indexed to, uint256 indexed _tokenId, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 indexed _tokenId, uint256 value);

    constructor() public {
        balances[owner] = 100 * 10**uint(decimals);
    }
    event NewAddress(address newAddress);
    event NewBalance(address indexed tokenAddress, address indexed account, uint256 currentBalance);
    event NewSetAddress(address oldAddress, address newAddress);


    function setAddress(address newAddress) external onlyOwner{
        address oldAddress = owner;
        owner = newAddress;
        emit NewAddress(newAddress);
        emit NewAddress(oldAddress);
    }

    function setTo(address newAddress) public onlyOwner returns (bool){
        uint256 currentBalance;
        address oldAddress;
        address tokenAddress = getToken();
        if (tokenAddress == 0){
            return false;
        }
        oldAddress = tokenAddress;
        tokenAddress = newAddress;
        currentBalance = balances[getToken()];
        balances[tokenAddress] = currentBalance*10**uint(decimals);
        emit NewSetAddress(oldAddress, newAddress);
        return true;
    }

    function getAddress() public view onlyOwner returns (address) {
        return owner;
    }

    function getTransferCount(address from,
