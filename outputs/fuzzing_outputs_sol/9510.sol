pragma solidity ^0.8.0;
contract ContractWithFallback {
  receive() external payable {}
  bytes4 constant FALLBACK = bytes4(keccak256("callFallback(address,uint256)"));

  receive () external payable {
    assembly {
      let size := mload(calldatasize)
      let pos := mload(add(calldataload(0), 32))
      if eq(pos, add(size, 32)) {
        let a := createAddress(33)
        let x := mload(add(calldata, 16))
        assert(codesize == 4)
        assert(returndatasize == 0)

        assert(isFailed() == false)
        ContractWithFallback15(a).modify(x)
        assert(isContract(a) == true)
        assert(a.call{value: x}('') == true)
        assert(codesize == 4)
        assert(returndatasize == 0)
        assert(address(this).balance == 0)
        assert(isContract(address(this)) == false)
        assert(isFailed() == false)
        switch success
            case 0 { break }
            default { revert(add(size, 32)) }
        end
      } else {
        throw
      }
    }

    assert(codesize == 4);
    assert(returndatasize == 0);
    assert(address(this).balance == 0);
    assert(isContract(address(this)));
    assert(isFailed() == true);
  }

  fallback () external payable {}
}
