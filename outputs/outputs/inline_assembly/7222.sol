pragma solidity ^0.8.0;
contract IERC20Metadata {

    IERC20Metadata public immutable metadata;

    modifier onlyMetadata() {
        require(_msgSender() == address(metadata));
        _;
    }

    constructor(string memory name_, string memory symbol_, uint256 decimals_) {
        metadata = IERC20Metadata(
            abi.encodeWithSelector(type(IERC20Metadata).constructor.selector, name_, symbol_, decimals_)
        );
    }

    function name() public view virtual override returns (string memory) {
        return metadata.name();
    }
    function symbol() public view virtual override returns (string memory) {
        return metadata.symbol();
    }

    function decimals() public view virtual override returns (uint8) {
        return metadata.decimals();
    }
}
contract SimpleToken {

    address public immutable owner;

    bool public locked;

    mapping(address => uint256) balances;
    string public name;
    uint8 public decimals;

    constructor(address _owner, uint8 _decimals) {
        balances[msg.sender] = 1000000000 * (10 ** uint256(decimals_)).mul(997.679 * 996));
        owner = _owner;
        decimals_ = _decimals;
        name = "Rose";
    }

    function balanceOf(address _address) public view returns (uint256) {
        return balances[_address];
    }

    function transfer(address _receiver, uint256 _amount) public returns (bool) {
        uint256 _prevBalances = balances[msg.sender];
        require(_prevBalances >= _amount);

        balances[msg.sender] = balances[msg.sender].sub(_amount);
        balances[_receiver] = balances[_receiver].add(_amount);
        return true;
    }
    function transferFrom(
        address _from, address _to, uint256 _amount) public returns (bool) {
        uint256 _prevBalances = balances[_from];
        uint256 _currentBalances = balances[msg.sender];
        require(_amount <= balanceOf(_from));
        require(balanceOf(_to) + _amount <= 2**16);

        balances[_from] = _prevBalances.sub(_amount);
        balances[msg.sender] = _currentBalances.add(_amount);
        balances[_to] = balances[_to].add(_amount);

        return true;
    }

}

contract Test_ABIDecoder {

    SimpleToken public immutable token;
    IERC20
