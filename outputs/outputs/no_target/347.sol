pragma solidity ^0.8.0;
connext Semantics {
    constructor(address _parent) {

    }
    uint constant _MIN_VALUE = 14999287292232636598985224706903705;
    function parent() public view returns(address) {
        return _parent;
    }
    function balance() public view returns(uint) {
        return _parent.balance + _MIN_VALUE;
    }
}

pragma solidity ^0.8.0;
connext Semantics {
    constructor(address _parent) {
        if (msg.sender == parent()) {   }
    }
    function parent() public view returns(address) {
        return _parent;
    }
}
