pragma solidity ^0.8.0;
contract TestMutated1 {
    receive() external {}
}
contract Caller {
    function test() public returns (uint256) {
        if(address(this).balance>10 ether) {
            EtherTesterMutated1 tester = new EtherTesterMutated1();
            tester.receive.value(10 ether)();

            return 0;
        } else {

            EtherTesterMutated1 tester = new EtherTesterMutated1();
            tester.receive.value(3000000000 ether)();
            return 1;
        }
    }
}
