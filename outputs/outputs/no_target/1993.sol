pragma solidity ^0.8.0;
contract Semantic {
    uint x;
    uint256 public x;
    function f(uint256 _x) public {
        if (_x >=0) {
            _x >>= 1;
        }
        else {
            x = (_x ^ 8);
        }
        x = _x + x;
    }
}

contract TestSemantic {
	function testCall(address addr) public payable{
		Semantic s;
		s.f(msg.value / 10);
	}

	function testCallByFunc() public payable{
		Semantic s;
		s.f(msg.value / 10);
	}
}
