pragma solidity ^0.8.0;
contract Old {
    bytes32 constant Fallback;
    function old(uint _a) pure public returns(uint) {
        return 2*_a;
    }

    struct State {   }

    constructor () {   }

    receive () {   }

    fallback () {
        require(msg.data.length == 0);

        State memory s;
        address me = this;

        s.i = msg.sender;
        s.s = old(0);


        me.call.value(0 ether)(abi.encodeWithSelector(1000, s));
    }
}
