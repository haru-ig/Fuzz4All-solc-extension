pragma solidity ^0.8.0;
contract Mutator{
    function set(uint16 number) public { x = number;}
}

pragma solidity ^0.8.0;
contract Test1805Enum{
    enum E{}
    uint16 x;
    constructor() public {
    }
    function set(uint16 number) public {
        x = number;
    }
    function get() public view returns(uint16) {
        return x;
    }
    function getEnum() public view returns (E memory e) {
        e = E(x);
    }
    function updateEnumContractCall(E memory e, uint16 newX) public {
        x = newX;
    }
}
