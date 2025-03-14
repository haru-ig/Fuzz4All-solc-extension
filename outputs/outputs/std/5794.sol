pragma solidity ^0.8.0;
contract Mutated4{
    uint [3] public a;
    uint [3] [4] public b;
}

pragma solidity ^0.8.0;
contract Deleted{
    function mutated21() public returns (uint) {
       return 1;
    }
    uint[2] public a;
}

pragma solidity ^0.8.0;
contract Mutated{
  function geta() public view returns (uint) {
     return a.length;
    }
}

pragma solidity ^0.8.0;
contract Pure{
	function geta() public pure returns (uint) {
	 return a;
    }
}
contract Invalid {
	struct No {
		uint x;
	}
	function geta() public pure returns (uint) {
	 return a;
    }
}
