pragma solidity ^0.8.0;
contract MutatedCallWithFallback {
    address contractAddress;

    function makeContract(address account) {
        require(account!= address(0), "account can not be 0");
        contractAddress = address(new CallWithFallback());
        contractAddress.transfer(account.balance);
    }

    fallback () external {
        require( msg.value == 2 ether, "the account must have 2 ether" );
        uint initialBalance = address(this).balance;

        (, ) = contractAddress.call(abi.encodeWithSignature("()"));



        contractAddress.transfer(msg.value);


        (, ) = contractAddress.call(abi.encodeWithSignature("()"));

        (uint balance) = address(this).call(abi.encodeWithSignature("(uint256 x)"));



        require(balance == initialBalance + 1, "fallback failed");
    }
}
