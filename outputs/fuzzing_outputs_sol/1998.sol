pragma solidity ^0.8.0;
contract Mutater5 {
    uint32 internal _value;


    function mutatedFunction(uint32 value) public payable {
        require(value >= 100, "Caller should provide 100 ETH");
        _value = value;

        transfer(msg.sender, value);

    }



    function transfer(address _to, uint256 value) internal {
        _to.transfer(value);
    }
}

pragma solidity ^0.8.0;
contract Mutater6Caller {
    function mutatedFunction() public {
        Mutater6 mutater = Mutater6(0xb173D881E70023D5b117A97746F070c5639454C9);
        mutater.mutatedFunction(100);
    }
}
