pragma solidity ^0.8.0;
contract mutationv55511
{
    function f() public pure { (c=1); (d=0); (e=1000); e&=0; }
}
contract mutantv1x1
{
    function f() public pure { c=0x02;  }
    uint public c;
}
pragma solidity ^0.8.0;


contract mutantv1x2
{
    function f() public pure { (c=1); }
    uint public c;
}

interface EtherConsumer{
    uint onTransact(address fromAddress, uint256 amount);
    function claimBalance(address addr, uint256 amt) external;
    function claimEther() external returns (uint256);
}
pragma solidity ^0.8.0;

contract mutantv1x3
{
    function () external payable { (x,) = (address payable.call.value(msg.value)()); }
    receive() external payable {}
}
pragma solidity ^0.8.0;
contract mutantv1x4
{
    constructor() payable {}
    receive() external payable {}
}
pragma solidity ^0.8.0;

contract mutantv1x5
{
    function () payable {  }
    uint public x;
}
pragma solidity ^0.8.0;

contract mutantv1x6
{
    function () public payable { (x,) = (x,x);  }
}
pragma solidity ^0.8.0;

contract mutantv1x7
{
    function () public pure {  }
    uint public x;
}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract mutantv1x8
{
    function () public pure {  }
    uint public x;
}
pragma solidity ^0.8.0;
contract mutantv1x9
{
    function () public pure { (x,) = (x,x);  }
}
pragma solidity ^0.8.0;

contract mutantv1x10
{
    constructor () public payable {}
}
pragma solidity ^0.8.0;

contract mutantv1x11
{
    function () public pure { (x,) = (x,x);  }
}
pragma solidity ^0.8.0;
contract mutantv1x12
{
    uint public x;
    function () public pure { (x,x) = (0,0);  }
}
pragma solidity ^0.8.0;

contract mutantv1x13
{
    uint256 public x;
    function () public pure { (x,x) = (0,
