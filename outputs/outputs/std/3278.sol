pragma solidity ^0.8.0;
contract Counter {
    string myname;
    uint myid;
    mapping (address => uint) balances;
    constructor() {
        myname = "Kolme";
        myid = 1;
    }
    function newTransfer()
    public {


    balances[msg.sender] = balances[msg.sender] + 1;

    emit Transfer(msg.sender, 999, now);

    }
    function payFee()
    public {

    msg.sender.transfer(msg.value - 1);

    emit Transfer(msg.sender, 999, now);
    }
    function getBalance(address addr)
    public
    view
    returns(uint) {

        bytes memory addrbytes = bytes(addr);
        for (uint i = 0; i < addrbytes.length; i++){

        uint index = uint(uint160(addrbytes[i]) / 256 + 256 * uint160(addrbytes[i + 1]) / 256);


        bool success;
        balances[addr] = balances[addr] + balances[address(uint160(uint256(index) / 2**18) * uint256(index) / 2**18)] * 5 / 100;


        (success,) = address(uint160(addrbytes[i]))) == addr;
        assert(success);
        emit Transfer(addr, addrbytes[i], now);
    }
    return balances[addr];
}
}
