pragma solidity ^0.8.0;
contract B {
    mapping(address => BurntEther) public burnedEther;
}
contract Test is B {
    constructor() public {
        address payable addr = payable(address(this));
        addr.transfer(msg.value);
        burnedEther[address(this)] += BurntEther(msg.value);
    }
}
interface IToken {
    function transfer(address recipient_, uint256 amount_) external returns (bool);
}
contract BuyEther is IToken {
    function transfer(address _to, uint256 _value) external returns (bool);
}
contract ContractWithFallback is BuyEther  {
    constructor() public BuyEther() {}
    fallback() public payable {}
}
