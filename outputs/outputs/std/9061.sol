pragma solidity ^0.8.0;
contract ExampleContract1 {

    struct AddressRecord{ uint256 balance; address addr; }

    AddressRecord storage record = AddressRecord(0, 0x0000000000000000000000000000000000000000);

    function setBalance() public {
        record.addr = msg.sender;
        record.balance = uint256(totalSupply());
    }

    function totalSupply() public view returns(uint256){
        return record.balance + ONEPOWER;
    }

    function balanceOf(address ) public view returns(uint256){
         return record.balance;
    }
}
