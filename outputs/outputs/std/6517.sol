pragma solidity ^0.8.0;
contract Mutate3 {
    uint256[] memory v;
    uint256[] memory w;
    struct Data {
    	uint i;
    	uint j;
    }

    function MutateMe(uint f) public {
    	if (f == 2) {

    		v = [v.length];
    		v.push(w[2]);
    	}

        Data memory result = Data({ i: a, j: f*250 });
    }
}
