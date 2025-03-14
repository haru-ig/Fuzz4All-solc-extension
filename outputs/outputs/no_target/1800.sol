pragma solidity ^0.8.0;
contract Mutate8 {
    function do_call(address _addr) public pure {
    	address _a = (_addr);
        assembly {
      		let x := mload(0x40)
      		let w := mload(_a)
      		let x' := x plus x
      		let w' := w minus w
        }
        assert(x' == _addr);
        assert(w' < _addr);
        assert(mload(_a) >= _addr);
        assert(_addr >= _addr + 1);
    }
}
