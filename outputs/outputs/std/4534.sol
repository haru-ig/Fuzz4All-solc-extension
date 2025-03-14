pragma solidity ^0.8.0;
contract MyContract {
    	function f() public {
	        uint z = (uint)255;
	    }
	}

pragma solidity ^0.8.0;
contract MyContract {
    function f() public {
        uint x = 255;
        x--;


    }
}
pragma solidity ^0.8.0;
contract MyContract {
	address[] memAddresses;
	function f() public {
		uint[2] memory a = [5, 42];
		memAddresses.push(address(a));
	}
	function g(uint i) public {
		emit Log(memAddresses[i]);
	}
	event Log(address addr);
}
