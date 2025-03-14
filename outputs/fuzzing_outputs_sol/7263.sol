pragma solidity ^0.8.0;
contract ValueWithFallback2 {
    mapping(address=>uint256) public funds;
    mapping(address=>uint256) public balanceOf;
    uint256 private maxFunds;
    constructor(uint256 _value) {
        funds[msg.sender] = _value;
        fundsToCaller(msg.sender);
    }
    function value() public view returns (uint256) {
        uint256 value = funds[msg.sender] + balanceOf[msg.sender];
        uint256 totalBalance = maxFunds + balanceOf[msg.sender];
        if (value > totalBalance) return totalBalance;
        return value;
    }
    function add(uint256 _value) public {
        fundsToCaller(msg.sender);
        uint256 value = funds[msg.sender] + _value;
        require(value <= maxFunds);
        funds[msg.sender] = value;
        balanceOf[msg.sender] += _value;
    }
    function callValue(address _to) public payable {
        uint256 value = msg.value;
        require(value <= maxFunds);
        uint256 senderBalance = value + balanceOf[msg.sender];
        require(balanceOf[_to] >= senderBalance);
        balanceOf[msg.sender] = senderBalance - value;
        balanceOf[_to] -= value;
        _to.call{value: value}(new bytes(0));
    }
    function fundsToCaller(address _to) view public returns (uint256) {
        uint256 senderBalance = address(this).balance + balanceOf[_to];
        uint256 maxBalance = _to.balance + maxFunds + balanceOf[_to];
        if(senderBalance > maxBalance) return maxBalance - senderBalance;
        return senderBalance;
    }
    function maxFunds() public view returns (uint256) {
        return maxFunds;
    }
    function fallback() external payable {
        require(false);
    }
    function () external payable {
        add(msg.value);
    }
}
