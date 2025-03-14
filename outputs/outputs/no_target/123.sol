pragma solidity ^0.8.0;
contract Bond {
    using SafeMath for uint256;

    struct Ls {
        uint256 price;
        uint256 interest;
        uint256 amount;
    }

    address public beneficiary;
    string public name;
    string public symbol;
    mapping(address => Ls[]) public lends;
    mapping(address => uint256) public lendsCount;
    mapping(address => bool) public canPayFee;
    bool public hasFee;
    uint256 public interestRate;
    mapping(address => uint256) public holdersBalance;
    mapping(address => IGovernorshipToken) public governanceToken;
    uint256 public totalPrice;
    mapping(address => uint256) public borrowingPrice;
    mapping(address => uint256) public totalSupply;
    mapping(address => mapping(address => uint256)) public totalBorrow;
    mapping(address => mapping(address => uint256)) public totalBorrowBalance;
    mapping(uint256 => bool) public isPayback;
    mapping(address => bool) public frozen;
    mapping(address => bool) public withdrawn;

    constructor(
        string memory _name,
        string memory _symbol,
        uint256 _interestRate,
        uint256 _totalPrice,
        address _beneficiary
    ) {
        name = _name;
        symbol = _symbol;
        beneficiary = _beneficiary;
        interestRate = _interestRate;
        totalPrice = _totalPrice;
        hasFee = false;
        freeze();
    }

    modifier canPayFeeWithRatio() {
        if (canPayFee[msg.sender]) _;
    }
    function balanceOf(address _owner) external view returns (uint256) {
        return holdersBalance[_owner];
    }

    function setBeneficiary(address _beneficiary) public onlyRole(ROLE_BENEFICIARY) {
        beneficiary = _beneficiary;
    }

    modifier onlyRole(bytes32 _role) {
        bytes32 _roleBytes32 = bytes32(_role);
        require(isRole(msg.sender, _roleBytes32), "access denied");
        _;
    }
    function freeze() external onlyRole(ROLE_FROZEN_STAKE) {
        frozen[msg.sender] = true;
    }

    function unfreeze() external onlyRole(ROLE_FROZEN_STAKE) {
        frozen[msg.sender] = false;
    }

    function withdraw(address to, uint256 price) external {
        uint256 amountToWithdraw = price;
        if (!frozen[msg.sender] &&!hasFee) {
            amountToWithdraw = amountToWithdraw.mul(totalPrice).div(totalBorrowBalance[address(this)][msg.sender]).div(3);
            require(amountToWithdraw > 0 &&
