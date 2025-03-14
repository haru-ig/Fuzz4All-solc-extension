pragma solidity ^0.8.0;
contract Mutator4 {
    address payable _addr;
    mapping(address=>bool) _isMutated;
    constructor() {
        _addr = payable(0x9dCbe5aA6d8883D2874EcB2204202Dda23F873B4);
    }
    receive() external payable {
        require(false);
        _isMutated[payable(msg.sender)] = true;
    }
    fallback() external payable {
    }
}

pragma solidity ^0.8.0;
contract TestMutators {




    address payable mutator1 = payable(0x347672553c2D8bB8F93607D5196f130C16AeC467);
    address payable mutator2 = payable(0x0c1995b39699f81a116E364A2C832
