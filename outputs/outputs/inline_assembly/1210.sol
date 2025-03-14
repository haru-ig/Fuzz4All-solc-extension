pragma solidity ^0.8.0;
contract BetterProgramV1{
  bool x;
  constructor() public {
    x = true;
  }
  modifier onlyIfTrue{
    require(x, "Fail");
    _;
  }
  modifier onlyIfExecuted {
    _;
  }
  function setToFalse() public onlyIfExecuted {
    x = false;
  }
  function isFalse() public view returns (bool){
    return x.not();
  }
}

pragma solidity ^0.8.0;
contract Evaluator{

	modifier onlyLastByte(){
	    return msg.data.length == 4;
	}
	function test() public onlyLastByte {

    }
}

pragma solidity ^0.8.0;
contract Evaluator{

	modifier onlyLastFourBytes(){
	    return msg.data.length == 4;
	}
	function test() public onlyLastFourBytes returns(bytes memory res) {
      res = bytes("hello");
    }
}

pragma solidity ^0.8.0;
contract BetterProgramV1{
  bool x;
  constructor() public {
    x = true;
  }
  modifier onlyIfTrue{
    require(x, "Fail");
    _;
  }
  modifier onlyIfExecuted {
    _;
  }
  function setToFalse() public onlyIfExecuted {
    x = false;
  }
  function isFalse() public view returns (bool){
    return x.not();
  }
}
pragma solidity ^0.8.0;
contract BetterProgramV2{
  bytes32 constant X = '100';
  bytes32 x;
	function execute() public onlyIfExecuted
  {
    x = X;
  }
}
