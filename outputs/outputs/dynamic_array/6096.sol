pragma solidity ^0.8.0;
contract Test30001 {
    address public adr;
    address payable[] private addresses;
    bytes private data;
    constructor (address _adr) public {
        emit Log();
        adr = _adr;
    }
    fallback ();
    event Log ();
}

pragma solidity ^0.8.0;
contract Test30002 {
    constructor (address payable[] memory) public {
    }
}
