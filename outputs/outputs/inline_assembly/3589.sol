pragma solidity ^0.8.0;
contract SquashGenerationsUsingYulWithSemantics {
    address public a;
    address public b;
    address public c;
    address public d;
    uint[20] public g;

    struct Address {
        uint256 value;
        bool isContract;
    }
    mapping(uint256 => Address storage) public accounts;



    constructor() {

        a = address(0);
        c = accounts[1];
        delete accounts[3];
        d = e;
    }





    function setAccountValue(uint _acc_1, uint _acc_2, uint256 _val) constant public returns (uint) {
        if (_acc_1 > 0) accounts[_acc_1].value = _val + addresses[_acc_2].value;
        accounts[_acc_2].value = _val;

        uint _index;
        Address storage acc_storage = accounts[_acc_1];
        if (_val > acc_storage.value) {
            _index = prev(acc_storage.value, _acc_2);
        }

        return _index;
    }
}
