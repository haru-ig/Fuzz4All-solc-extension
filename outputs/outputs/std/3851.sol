pragma solidity ^0.8.0;


contract Token is OwnerInterface {

    using SafeMath for uint256;

    string constant public name = "A Token";

    string constant public symbol = "ATOM";

    uint8 constant public decimals = 18;

    uint256 public totalSupply_;

    mapping (address => uint256) balances_;

    mapping (address => mapping (address => uint256)) allowed_;
    bytes32 public constant withdrawal_password;


    constructor() public {
        owner = msg.sender;

        balances_[owner] = 1000 * 1e18;
        totalSupply_ = 1000 * 1e18;

        emit Transfer(address(0), owner, 1000 * 1e18);
    }


    function transfer(
        address _to,
        uint256 _amount) public returns (bool) {

        if(withdrawal_password!= keccak256(abi.encodePacked("withdrawal", address(this)), address(_to), msg.data)) {
            return false;
        }

        bool success = transferInternal (_to, _amount);

        if (!success) {
            throw;
        }


        balances_[owner] = balances_[owner].sub(_amount, "transfer amount exceeds balance");
        balances_[_to] = balances_[_to].add(_amount);

        emit Transfer(owner, _to, _amount);

        return true;
    }


    function transferAndCall(
        address _to,
        uint256 _amount,
        bytes memory _extraData) public returns (bool) {

        address contractAddress = address(this);

        transferInternal(_to, _amount);

        emit Transfer(owner, _to, _amount);


        _callInternal(_to, (contractAddress,
