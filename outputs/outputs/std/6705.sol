pragma solidity ^0.8.0;
contract Mutate45 {
    address private owner_;
    constructor() public {
        owner_ = msg.sender;
    }
    modifier authoredBy(address account) {
        ( bool flag) = isAuthorized_?( account == owner_ );
        require( flag,"No authority granted" );
        _;
    }
    modifier isAuthorized() {
        bool flag = true;
        flag = flag & ( msg.sender == owner_ );
        _;
    }
    function setOwner(address _NewOwner) public isAuthorized() {
        owner_ = _NewOwner;
    }
}
