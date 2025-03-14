pragma solidity ^0.8.0;
contract SemanticallyEquivalenty4 {
    mapping(address => uint) balances;
    function balanceFunction() public view returns (uint){
        return balances[msg.sender];
    }
    function() external payable {
       emit Log((msg.sender), "", "");
    }
    event Log (address value, string value2, string value3);
}

*/
