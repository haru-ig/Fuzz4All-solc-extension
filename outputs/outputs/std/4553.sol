pragma solidity ^0.8.0;
contract MyContract {
    function() external payable {}
	struct A {
        uint a;
        uint b;
        uint c;
    }
    function() public view returns(A memory) {
        A memory a;
        a.a = 1;
        a.b = 2;
        a.c = 3;
        return a;
    }
    function call(A memory a) public {
        a.c = 4;
        a.a += 10;
    }
    function memory(A memory a) public pure returns(A memory) {
        return a;
    }
    function store(A memory a) public {
        return;
    }
    function returnStore(A memory a) public view returns(uint) {
        return a.a;
    }
	}

pragma solidity ^0.8.0;
contract MyContract {
    function(uint, string memory) public pure returns(bool) {
        return true;
    }
	function(uint, string memory) public payable { }
	function(uint, string memory) public pure returns(uint) {
        return 1;
    }
	function(uint, string memory) public pure returns(uint, uint) {
        return 1, 2;
    }
	function(uint, string memory) public pure returns(uint, uint, uint) {
        return 1, 2, 3;
    }
	function(uint, string memory) public pure returns(uint, uint, uint, uint) {
        return 1, 2, 3, 4;
    }
	function(uint, string memory) public pure returns(uint, uint, uint, uint, uint) {
        return 1, 2, 3, 4, 5;
    }
    function memory(uint, string memory) public view returns(uint, uint) {
        return 1, 2;
    }
	}
