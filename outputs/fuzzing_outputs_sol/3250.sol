pragma solidity ^0.8.0;
contract MutatedCaller {
    uint public totalMutations = 0;
    mapping (address => uint[]) storage myStorage;
    mapping (address => uint) public values;

    function highLevel() public payable returns (uint) {
        uint value = 0;
        for (i := 0; i < 10; i++ ){
            myStorage[0x0][i].push();
            value = value.add(myStorage[0x0][i][0]);
        }
        myStorage[42][i].push();
        value = value.add(myStorage[42][i][0]);
        myStorage[0x0][i].push();
        value = value.add(myStorage[0xc8cf30dd2a09f0473f73f1ca7be1a478a68313ad][i][0]);
        myStorage[0x0][i].push();
        value = value.add(myStorage[0x6048f492f7e859a31f19ec6c3626ea4cc9b0861c][i][0]);
        myStorage[0x0][i].push();
        value = value.add(myStorage[0x22536d62cf0c7ec7fa6f60f7a57fd05d3cd004d0][i][0]);
        myStorage[0x0][i].push();
        value = value.add(myStorage[0x20046374a9359900a572dfefcb0a7c104674ff4c][i][0]);
        myStorage[0x0][i].push();
        value = value.add(myStorage[0xd2a2a78fe0dada77f1e9389370dbdfbe09c03322][i][0]);
    }

    function() public payable {
        uint v = myStorage[getThisAddress()][0][keccak256(abi.encodePacked(msg.data))];
        msg.sender.call.value(v)(abi.encodeWithSelector(0x7d8913f, 0));
        totalMutations++;
    }


    function getThisAddress() public pure returns(address) {
        return tx.origin;
    }
}
