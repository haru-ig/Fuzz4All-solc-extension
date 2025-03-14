pragma solidity ^0.8.0;
contract Array {
	uint[] x;
	function f() public {
		x.push(0);
		x.push(1);
		x[1] = 2;
	    }
	}
 pragma solidity ^0.6.0;
contract Convert {
	uint256[] x;
	function get() public view returns (uint256) {
        return x[2];
	}
	}
pragma solidity ^0.8.0;
contract Array {
    uint256[] x;
    function f() public {
        x.push(1);
        x.push(2);
        x.push(3);
    }
}
pragma solidity ^0.6.0;
contract Array {
    uint256[] x;
    function f() public {
        x[1] = 2;
        x[2] = 3;
        uint256 _x;
    }
}
pragma solidity ^0.8.0;
contract Array {
    uint256[] x;
    function f() public {
        x.append(5);
        uint256 _x;
    }
}
pragma solidity ^0.6.0;
contract Array {
    uint256[] x;
    function f() public {
        x.push(5);
    }
}
