pragma solidity ^0.8.0;
contract Caller {
    fallback () external payable { }
    receive() external payable {}
    receive() public pure { }
    function () external payable {}
    function pure () external pure { }
    function calldata () external payable {}
}





pragma solidity ^0.8.4;


interface Interface {

    function simpleFallback(uint);
}

contract Simple {
    uint256 public s;
    constructor () { }


    function simpleFallback(uint x) public {

        address sender;

        uint256 amount;


        Interface i = Interface(address(this));

        s = i.simpleFallback(x);
    }
}




pragma solidity ^0.8.4;


contract ModCall {
    fallback() external payable { }

    receive() external payable { }
    receive() external pure { }
    receive() public pure { }
    receive() public payable {}
}




pragma solidity ^0.8.4;

interface Interface {

    function fallback(uint) external;
}
