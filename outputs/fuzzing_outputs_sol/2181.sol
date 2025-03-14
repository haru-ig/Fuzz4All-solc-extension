pragma solidity ^0.8.0;
contract Mutater335 is Mutater334 {
    receive() payable external {
        payee;
    }
}




interface FallbackFallbackThrower is ERC20 {

    event FallbackFallbackThrown(address indexed payee, uint balanceBeforeFallback);

    function fallback() external payable;
}


pragma solidity ^0.8.0;

















contract InterceptErrorTest {
    address public payee;






    function testThrowAndFallbackThrow(uint256 amount) external onlyFallbackThrower {
        balances[msg.sender] += amount;
    }
}
contract FallbackThrower is FallbackFallbackThrower {
    constructor(address payable _payee, uint initialBalance) public {
        balances[_payee] = initialBalance;
    }
}
