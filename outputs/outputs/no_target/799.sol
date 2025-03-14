pragma solidity ^0.8.0;
address A;
contract ContractDoesNotPass {
    function AContractDoesNotPass(address a) public {
        require(address(this).balance > 0, "Not enough");
        assert(A.balance <= address(this).balance, 'Bad A.balance');
        uint256 a_balance = address(A).balance;
        (uint _balance, ) = A.call{value: 0x0}(new bytes(0));
        (uint256 _balance2, ) = B.callValue();
    }
}
