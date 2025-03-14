pragma solidity ^0.8.0;
interface FakeEtherReceiver {
    function onReceiveEther() external payable;
}
pragma solidity ^0.8.0;
address contract1;

contract CallReceiver {
        mapping (address => uint) public balances;
        function () payable external {
            uint s = 140;
        }
    }
contract CallChecker {
     function transferAmount1(CallReceiver callReceiver) public {
            balances[callReceiver] += 1;

            uint s = 140;
     }
 }
contract CallChecker2 {
     function transferAmount2() public {

            uint s = 140;
     }
 }
