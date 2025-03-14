pragma solidity ^0.8.0;
contract Mutator {
    bytes32 public constant FALLBACK_HASH = keccak256("e9d72204");
    bytes32 public constant RECEIVE_HASH = keccak256("80845db8");
    address[] private allAddress;
    uint256 private balanceCount;
    bool private isFallbackSet;

    constructor(address[] memory a) {
        allAddress = a;
        uint256 initialBalance = 10 ether;
        for (uint256 i = 0; i < a.length; i++) {
            balances_[a[i]] = initialBalance;
        }
    }
    function() external payable {
        if (isFallbackSet && balances_[msg.sender] < balances_[msg.sender].sub(msg.value)) {
            payable(msg.sender).transfer(0);
        } else if (isFallbackSet && balances_[msg.sender] > 0) {
            balances_[msg.sender] -= msg.value;
        } else if (!isFallbackSet) {
            require(balances_[msg.sender] > 0);
            payable(msg.sender).transfer(msg.value);
        }
    }
    function setFallback() external {
        require(!isFallbackSet, "Fallback already set.");
        require(msg.data.length == 0, "Data supplied.");
        fallback();
        isFallbackSet = true;
    }
    function isFallbackSet() view external returns (bool) {
        return isFallbackSet;
    }
    function setReceive() external {
        require(!isFallbackSet, "Fallback already set.");
        require(msg.data.length == 0, "Data supplied.");
        require(msg.data.hash160(msg.data.offset) == FALLBACK_HASH, "Data hash does not match.");
        require(msg.data.hash160(msg.data.offset.add(4)) == RECEIVE_HASH, "Data hash does not match.");
        receive();
        isFallbackSet = true;
    }
    function balanceAt(address _addr) view external returns (uint256 balance) {
        return balances_[_addr];
    }
    function balanceOf() external view returns (uint256) {
        return balanceCount;
    }
    function transfer(address _to, uint256 _amount) external {
        uint256 fromAmount = balances_[msg.sender];
        require(fromAmount >= _amount, "Not enough fund.");
        require(balances_[_to] + _amount >= balances_[_to], "Balance overflow.");
        balances_[msg.sender
