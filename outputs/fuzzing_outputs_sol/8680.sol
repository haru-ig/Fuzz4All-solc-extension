pragma solidity ^0.8.0;



contract SomeContract {

    receive () external payable {
        revert();
    }
}



contract SomeContract2 {
    function fallback() external payable {}
}


contract Caller {
    function transferEther(address recipient) public payable {
        uint256 gasUsed = 0;
        uint256 value = 0;
        (gasUsed, value) = address(this).call.value(gasUsed + value)('');
        require(gasUsed == 0 || gasUsed > 20000, 'gas used exceeds 20000 gas limit for call.value');
    }
}
