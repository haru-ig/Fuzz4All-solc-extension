pragma solidity ^0.8.0;
contract L20 {
    function getVal() public view returns(uint) {
        L20 l;
        return l.value;
    }
    function setVal(uint val) public {
        L20 l;
        l.value = val;
    }
}

pragma solidity ^0.8.0;
contract L20 {
    uint public constant value = 3;
    function getVal() public view returns(uint) {
        L20 l = L20(msg.sender);
        return l.value;
    }
    function setVal(uint val) public {
        L20 l = L20(msg.sender);
        l.value = val;
    }
}
