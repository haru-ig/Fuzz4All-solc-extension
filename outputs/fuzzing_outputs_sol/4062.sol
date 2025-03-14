pragma solidity ^0.8.0;
contract MutantFallback {


  function myFallback(uint256 _amount) public pure returns (uint256) {


    assembly {
      mstore(0x0, 1000000000000000000000000)
    }
    return 100 * _amount;
  }
}

pragma solidity ^0.8.0;
contract Caller {
  function myTransferFrom(address _from,
                             address _to,
                             uint256 _amount,
                             address _data,
                             bytes calldata _sig) public{
    (bool result,) = _to.call({value: _amount, data: _data});
    require(result == true, "Failed call");
  }
}

pragma solidity >0.8.0;
contract Test is MutantFallback {


  function myFallback(uint256 amount)
    public
    pure
    returns(uint256)
  {
    return amount * (10 * 10 - 7);
  }

  function simpleCall() public payable {
    (bool success, bytes memory data) = payable(address(this)).call{value: msg.value}("");
    assert.equal(success, true, "Expected success");
    assert.equal(uint256(data), 0, "Expected empty");
    uint256 result = 0;
    assembly {
      result := mload(0x00)
    }
    assert.equal(result, 8800, "Missing 10 times 10, Minus 7");
  }
}
