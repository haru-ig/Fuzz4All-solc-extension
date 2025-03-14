pragma solidity ^0.8.0;
contract SemanticMutation4 {

    event ChangedValue1(uint256 newValue1);
    event ChangedValue2(uint256 newValue2);

    mapping(uint160 => uint256) balances;
    mapping(address => uint256) allowed;

    uint256 public constant ONE_HUNDRED_THOUSAND = 0xffffffff;

    modifier onlyCallerOrOwner() {
        if (msg.sender!= sender) {
            revert();
        }
        _;
    }

    constructor() {
    }

    function () external payable {}
    function () external payable {}

    function approveAndCall(address spender, uint256 value) public onlyCallerOrOwner {
        allowed[spender] = value;
        emit ChangedValue1(value);
    }

    function () public payable {
        revert();
    }

    function allowance() public view returns (uint256) {
        return allowed[msg.sender];
    }

    function transfer(address _to) public returns (bool) {

        balances[msg.sender] = balances[msg.sender].sub(value);

        balances[_to] = balances[_to].add(value);

        emit ChangedValue1(value);

        return true;
    }

    function transferFrom(address _from, address _to) public returns (bool) {

        balances[_from] = balances[_from].sub(value);

        allowed[_from] = allowed[_from].sub(value);

        balances[_to] = balances[_to].add(value);

        emit ChangedValue1(value);

        return true;
    }

    function increaseAllowance(uint256 value) public onlyCallerOrOwner {
        allowed[msg.sender] = allowed[msg.sender].add(value);
        emit ChangedValue2(value);
    }

    function decreaseAllowance(uint256 value) public onlyCallerOrOwner {
        uint256 oldAllowance = allowed[msg.sender];

        uint256 newAllowance = oldAllowance.sub(value);

        if (newAllowance < oldAllowance) {
            revert();
        }

        allowed[msg.sender] = newAllowance;
        emit ChangedValue2(value);
    }
}
