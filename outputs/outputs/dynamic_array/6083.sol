pragma solidity ^0.8.0;
contract Test29999Mutator {
    address public adr;
    constructor (address _adr) public {
        adr = _adr;
    }
    fallback () external {
      emit Fallback(adr);
    }
    uint256 state;
    fallback () external {

        state = adr.call.value(0)();
    }
}
