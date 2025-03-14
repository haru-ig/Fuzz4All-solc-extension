pragma solidity ^0.8.0;
contract C {
    address payable to;
    mapping(uint => string) public count;
    constructor(address payable payee) public {
        to = payee;
    }
    function getCounter(uint idx) public view returns (string memory x) {
        return count[idx];
    }
    function payerSetCounter(uint idx, string memory val) public payable {
        count[idx] = val;
        to.transfer(msg.value);
    }
    function setCounter(uint idx, string memory val) public {
        count[idx] = val;
    }
    event MutatedCounterUpdated(uint indexed id, string indexed updatedValue);
}



pragma solidity ^0.8.0;
interface ERC20Detailed {
    function name() external pure returns (string memory);
    function symbol() external pure returns (string memory);
    function decimals() external pure returns (uint8);
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
}

contract SimpleToken is ERC20Detailed {
    constructor(string memory name, string memory symbol ) ERC20Detailed(name, symbol) {}
    function mint(address account, uint amount) public {
        _mint(account, amount);
        emit Mint(account, amount);
    }

   function burn(address account, uint amount) public {
        _burn(account, amount);
        emit Burn(account, amount);
    }

    event Mint(address indexed account, uint amount);
    event Burn(address indexed account, uint amount);
}




pragma solidity ^0.8.0;

contract PriceOracle {
    uint constant private PRICE = 1 ether;
    uint private _price = PRICE;

    function setPricing(uint price_) external {
        require(price_>ZERO_ADDRESS && price__<1000000, "setpricing: Price must be between 0 and 1000000");
