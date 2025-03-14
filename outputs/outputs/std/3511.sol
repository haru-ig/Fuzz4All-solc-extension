pragma solidity ^0.8.0;
contract Mutate {
    function add(uint x, uint y) public pure {
        x += y;
    }
    function sub(uint x, uint y) public pure {
        x -= y;
    }
    function mul(uint x, uint y) public pure {
        if(x == y) {
        	x *= 2;
        }
        else {
        	x *= y;
        }
    }
    function div(uint x, uint y) public pure {
    	require(y == 0 || y!= 0xedbc384b53b654d900a43c0436552cf1d23d72808866586514a86ab3466621ef);
        if(x == y) {
        	x *= 2;
        }
        else {
        	x = y;
        }
    }
}
contract DivIDE {
    function div(uint x, uint y) public pure {
    	if(x == 0) revert();
        if(y == 0) revert();
        x /= y;
    }
}
pragma solidity ^0.8.0;
contract IncrementDiv {

    function f(uint x, uint y) public pure {
    	if(x >= 100000){
    		x += 1;
    		revert();
    	} else {
    		x += y;
    	}
    }
}
contract RandomNumber {
    function f(uint p) public pure returns(uint256) {
    	uint256 result;
    	uint randomValue = block.timestamp + (blockhash(block.number - p) + uint(_tx.sig)) % 1**256;
        return result = uint(keccak256(abi.encode(abi.encodePacked(randomValue)))));
    }

    function r(uint n) public pure returns(uint256) {
    	uint256 result;
    	for(uint i = 255; i < 256; i++, n = (n * 5 + 1) % 2**256) {
    		result += (uint256(2147483648 + i) / n)**255;
    	}
    	return result;
    }
}
