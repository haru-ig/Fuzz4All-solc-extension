pragma solidity ^0.8.0;
contract AdvancedContract {
    uint constant ONE = 5;

    modifier onlyGet(uint _value) {
        assert(_value == THREE);
        _;
    }
    function change (uint _value) public onlyGet(_value) {
        uint temp = ONE;
        temp = THREE;
        _value = ONE;
        _value = THREE;
        _value = ZERO;
    }
}



contract MyContract {
    uint constant ONE = 2;
    uint constant THREE = 3;

    AdvancedContract instance = new AdvancedContract();

    function change () public {
        instance.change(ONE);
    }

    function change2 () public {
        change();

        instance.change(ONE);
    }

    function change3 () public {
        instance.change(THREE);
    }
}
